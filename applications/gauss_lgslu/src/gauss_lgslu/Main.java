/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package gauss_lgslu;

/**
 *
 * @author Andreas
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        //double[][] A = {{0.0,1.0,1.0,0.0}, {1.0,0.0,2.0,2.0}, {0.0,1.0,5.0,7.0}, {0.0,4.0,3.0,0.0}};
        //double[] b = {6.0,6.0,3.0,8.0};

        double c = 300000000.0; // m/s
        double xr = 50.0;
        double yr = 15.0;
        double zr = 5.0;

        double[] x = {0.0,100.0,100.0,0.0};
        double[] y = {0.0,0.0,100.0,101.0};
        double[] z = {3.0,3.0,3.0,3.1};

        double t1 = Math.sqrt(Math.pow((xr-x[0]),2)+Math.pow((yr-y[0]),2)+Math.pow((zr-z[0]),2))/c;
        double t2 = Math.sqrt(Math.pow((xr-x[1]),2)+Math.pow((yr-y[1]),2)+Math.pow((zr-z[1]),2))/c;
        double t3 = Math.sqrt(Math.pow((xr-x[2]),2)+Math.pow((yr-y[2]),2)+Math.pow((zr-z[2]),2))/c;
        double t4 = Math.sqrt(Math.pow((xr-x[3]),2)+Math.pow((yr-y[3]),2)+Math.pow((zr-z[3]),2))/c;

        double dt1 = 0.0000001;
        double dt2 = 0.0000001;
        double dt3 = 0.0000001;
        double dt4 = 0.0000001;

        double[] t = {t1+dt1,t2+dt2,t3+dt3,t4+dt4};
        System.out.println("t"+t1+";"+t2+";"+t3+";"+t4);

        double[][] A = new double[3][3];
        A[0][0] = x[0]-x[3];
        A[1][0] = x[1]-x[3];
        A[2][0] = x[2]-x[3];
        A[0][1] = y[0]-y[3];
        A[1][1] = y[1]-y[3];
        A[2][1] = y[2]-y[3];
        A[0][2] = z[0]-z[3];
        A[1][2] = z[1]-z[3];
        A[2][2] = z[2]-z[3];

        double[] b = new double[3];
        b[0] = Math.pow(c,2)*(t[0]-t[3]);
        b[1] = Math.pow(c,2)*(t[1]-t[3]);
        b[2] = Math.pow(c,2)*(t[2]-t[3]);

        for(int r=0; r<A.length; r++){
            for(int j=0; j<A[r].length; j++){
                System.out.print(A[r][j]+";");
            }
            System.out.println(b[r]);
        }

        double[] x0t = lgslu(A, b);

        for(int i=0; i<x0t.length; i++){
            System.out.print(x0t[i]+";");
        }
        System.out.println();


        A[0][0] = 2*(x[0]-x[3]);
        A[1][0] = 2*(x[1]-x[3]);
        A[2][0] = 2*(x[2]-x[3]);
        A[0][1] = 2*(y[0]-y[3]);
        A[1][1] = 2*(y[1]-y[3]);
        A[2][1] = 2*(y[2]-y[3]);
        A[0][2] = 2*(z[0]-z[3]);
        A[1][2] = 2*(z[1]-z[3]);
        A[2][2] = 2*(z[2]-z[3]);

        b[0] = Math.pow(x[0],2)-Math.pow(x[3],2) + Math.pow(y[0],2)-Math.pow(y[3],2) + Math.pow(z[0],2)-Math.pow(z[3],2) - Math.pow(c,2)*(Math.pow(t[0],2)-Math.pow(t[3],2));
        b[1] = Math.pow(x[1],2)-Math.pow(x[3],2) + Math.pow(y[1],2)-Math.pow(y[3],2) + Math.pow(z[1],2)-Math.pow(z[3],2) - Math.pow(c,2)*(Math.pow(t[1],2)-Math.pow(t[3],2));
        b[2] = Math.pow(x[2],2)-Math.pow(x[3],2) + Math.pow(y[2],2)-Math.pow(y[3],2) + Math.pow(z[2],2)-Math.pow(z[3],2) - Math.pow(c,2)*(Math.pow(t[2],2)-Math.pow(t[3],2));

        double[] x00 = lgslu(A, b);

        for(int i=0; i<x00.length; i++){
            System.out.print(x00[i]+";");
        }
        System.out.println();

        double A1 = Math.pow((x[3]-x00[0]),2)+Math.pow((y[3]-x00[1]),2)+Math.pow((z[3]-x00[2]),2)-Math.pow(c*t[3],2);
        double B1 = (x[3]-x00[0])*x0t[0] + (y[3]-x00[1])*x0t[1] + (z[3]-x00[2])*x0t[2] - Math.pow(c,2)*t[3];
        double C1 = Math.pow(x0t[0],2)+Math.pow(x0t[1],2)+Math.pow(x0t[2],2)-Math.pow(c,2);
        System.out.println(A1+";"+B1+";"+C1);

        double pq = Math.sqrt(Math.pow(B1,2)-A1*C1);
        double t01 = (B1+pq)/C1;
        double t02 = (B1-pq)/C1;
        System.out.println(pq+";"+t01+";"+t02);

        double x0 = x00[0]+x0t[0]*t01;
        double y0 = x00[1]+x0t[1]*t01;
        double z0 = x00[2]+x0t[2]*t01;
        System.out.println(x0+";"+y0+";"+z0);
    }

    public static double[] lgslu(double[][] A, double[] b){

        double pivo_max = 0;
        int pivo_max_pos = 0;

        double tmp = 0;
        for(int i=0; i<A.length-1; i++){
            for(int j=i; j<A.length; j++){
                if(i==j){
                    pivo_max        = A[j][i];
                    pivo_max_pos    = j;
                } else{
                    if(pivo_max < A[j][i]){
                        pivo_max        = A[j][i];
                        pivo_max_pos    = j;
                    }
                }
                System.out.println(pivo_max_pos+";"+pivo_max);
            }

            // zeilen tauschen
            if(i!=pivo_max_pos){
                System.out.println("zeilen tauschen"+pivo_max_pos+"zu"+i);
                for(int j=0; j<A.length; j++){
                    tmp                 = A[i][j];
                    A[i][j]             = A[pivo_max_pos][j];
                    A[pivo_max_pos][j]  = tmp;
                }
                tmp                 = b[i];
                b[i]                = b[pivo_max_pos];
                b[pivo_max_pos]     = tmp;
            }


            // rechnung
            double factor=0;
            for(int j=i+1; j<A.length; j++){
                if(A[j][i]!=0){
                    System.out.println("yyy"+A[j][i]);
                    factor = A[j][i]/A[i][i];
                    for(int k=0; k<A.length; k++){
                        A[j][k] = A[j][k]-A[i][k]*factor;
                        System.out.print("xxx"+A[j][k]);
                    }
                    System.out.println();

                    b[j] = b[j]-factor*b[i];
                }
            }

            for(int r=0; r<A.length; r++){
            for(int j=0; j<A[r].length; j++){
                System.out.print(A[r][j]+";");
            }
            System.out.println(b[r]);
            }
        }
        System.out.println();

        double[] x = new double[A.length];
        for(int i=A.length-1; i>=0; i--){
            if(i==A.length-1){
                x[i]=b[i];
            } else{
                for(int j=A.length-1; j>=i+1; j--){
                    x[i] = x[i]-A[i][j]*x[j];
                }
                x[i] = (b[i]+x[i]);
            }
            x[i] = x[i]/A[i][i];
        }

        return x;
    }
}
