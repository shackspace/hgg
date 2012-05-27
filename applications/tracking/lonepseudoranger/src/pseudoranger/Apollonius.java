/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pseudoranger;

/**
 *
 * @author admin
 */
public class Apollonius {
    public static void ThreeD(double[] x, double[] y, double[] z, double[] s, double[] r, double x0, double y0, double z0){
        
        //double[][] A = {{0,8,0,2,6}, {3,-4,0,4,5}, {1,4,-2,3,3}};

        // src: http://www.diku.dk/hjemmesider/ansatte/rfonseca/implementations/apollonius3d.pdf
        double[][]  A = new double[3][5];
                    A[0][0] = 2*(x[1]-x[0]);
                    A[1][0] = 2*(x[2]-x[0]);
                    A[2][0] = 2*(x[3]-x[0]);

                    A[0][1] = 2*(y[1]-y[0]);
                    A[1][1] = 2*(y[2]-y[0]);
                    A[2][1] = 2*(y[3]-y[0]);

                    A[0][2] = 2*(z[1]-z[0]);
                    A[1][2] = 2*(z[2]-z[0]);
                    A[2][2] = 2*(z[3]-z[0]);

                    A[0][3] = 2*(s[0]*r[0]-s[1]*r[1]);
                    A[1][3] = 2*(s[0]*r[0]-s[2]*r[2]);
                    A[2][3] = 2*(s[0]*r[0]-s[3]*r[3]);

                    A[0][4] = (Math.pow(x[1],2)+Math.pow(y[1],2)+Math.pow(z[1],2))-(Math.pow(x[0],2)+Math.pow(y[0],2)+Math.pow(z[0],2))+Math.pow(r[0],2)-Math.pow(r[1],2);
                    A[1][4] = (Math.pow(x[2],2)+Math.pow(y[2],2)+Math.pow(z[2],2))-(Math.pow(x[0],2)+Math.pow(y[0],2)+Math.pow(z[0],2))+Math.pow(r[0],2)-Math.pow(r[2],2);
                    A[2][4] = (Math.pow(x[3],2)+Math.pow(y[3],2)+Math.pow(z[3],2))-(Math.pow(x[0],2)+Math.pow(y[0],2)+Math.pow(z[0],2))+Math.pow(r[0],2)-Math.pow(r[3],2);

        /*
        for(int i=0; i<A.length; i++){
            for(int j=0; j<A[i].length; j++){
                System.out.print(A[i][j]+";");
            }
            System.out.println();
        }
        */
        
        //solving the matrix with gaussjordan
        double[][] x01 = Matrix.gaussjordan(A);

        double M = x01[0][x01[0].length-1];
        double N = -x01[0][x01.length];
        double P = x01[1][x01[1].length-1];
        double Q = -x01[1][x01.length];
        double R = x01[2][x01[2].length-1];
        double S = -x01[2][x01.length];
        //System.out.println(M+";"+P+";"+R);
        //System.out.println(N+";"+Q+";"+S);

        double a = Math.pow(N,2)+Math.pow(Q,2)+Math.pow(S,2)-1;
        double b = 2*(M-x[0])*N + 2*(P-y[0])*Q + 2*(R-z[0])*S + 2*s[0]*r[0];
        double c = Math.pow((M-x[0]),2) + Math.pow((P-y[0]),2) + Math.pow((R-z[0]),2) - Math.pow(r[0],2);
        //System.out.println(a+";"+b+";"+c);

        double root= Math.pow(b, 2)-4*a*c;
        double rs1 = (-b+Math.sqrt(root))/(2*a);
        double rs2 = (-b-Math.sqrt(root))/(2*a);
        //System.out.println(rs1+";"+rs2+";"+root);

        double zs1 = R+S*rs1;
        double ys1 = P+Q*rs1;
        double xs1 = M+N*rs1;
        
        double zs2 = R+S*rs2;
        double ys2 = P+Q*rs2;
        double xs2 = M+N*rs2;
        System.out.println("**** Apollonius 3D ****");
        System.out.println("centerpoint1 "+xs1+";"+ys1+";"+zs1+";radius "+rs1+";time inaccuracy "+(rs1/Main.c_light));
        System.out.println("centerpoint2 "+xs2+";"+ys2+";"+zs2+";radius "+rs2+";time inaccuracy "+(rs2/Main.c_light));
        if(pseudoranger.Main.testmode>0){
            System.out.println("deviation point "+(xs2-x0)+";"+(ys2-y0)+";"+(zs2-z0));
            System.out.println("deviation radius "+Math.sqrt(Math.pow((xs2-x0),2)+Math.pow((ys2-y0),2)+Math.pow((zs2-z0),2)));
        }
        
        Main.m_x[stationcombinations.Main.counter*2] = xs1;
        Main.m_y[stationcombinations.Main.counter*2] = ys1;
        Main.m_z[stationcombinations.Main.counter*2] = zs1;
        Main.m_r[stationcombinations.Main.counter*2] = rs1;
        Main.m_x[stationcombinations.Main.counter*2+1] = xs2;
        Main.m_y[stationcombinations.Main.counter*2+1] = ys2;
        Main.m_z[stationcombinations.Main.counter*2+1] = zs2;
        Main.m_r[stationcombinations.Main.counter*2+1] = rs2;
    }
}
