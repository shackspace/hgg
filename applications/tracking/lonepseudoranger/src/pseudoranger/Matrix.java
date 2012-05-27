/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pseudoranger;

/**
 *
 * @author admin
 */
public class Matrix {
    public static double[][] gaussjordan(double[][] A){
        //http://en.wikipedia.org/wiki/Gauss%E2%80%93Jordan_elimination
        
        double pivo_max = 0;
        int pivo_max_pos = 0;

        double tmp = 0;
        for(int i=0; i<A.length; i++){
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
                //System.out.println(pivo_max_pos+";"+pivo_max);
            }

            // changing lines
            if(i!=pivo_max_pos){
                //System.out.println("zeilen tauschen"+pivo_max_pos+"zu"+i);
                for(int j=0; j<A[i].length; j++){
                    tmp                 = A[i][j];
                    A[i][j]             = A[pivo_max_pos][j];
                    A[pivo_max_pos][j]  = tmp;
                }
            }


            // calculation
            double factor=0;
            for(int j=0; j<A.length; j++){ //j=i+1
                if(A[j][i]!=0 && i!=j){
                    factor = A[j][i]/A[i][i];
                    //System.out.println(i+"yyy"+A[j][i]+";"+factor);
                    for(int k=0; k<A[j].length; k++){
                        A[j][k] = A[j][k]-A[i][k]*factor;
                        //System.out.print(i+"xxx"+A[j][k]);
                    }
                    //System.out.println();
                }
            }

            for(int r=0; r<A.length; r++){
            for(int j=0; j<A[r].length; j++){
                //System.out.print(A[r][j]+";");
            }
            //System.out.println();
            }
        }
        //System.out.println();

        double factor1 = 0;
        for(int i=0; i<A.length; i++){
            factor1 = A[i][i];
            for(int j=0; j<A[i].length; j++){
                A[i][j] = A[i][j]/factor1;
                //System.out.print(A[i][j]+";");
            }
            //System.out.println();
        }

        return A;
    }
}
