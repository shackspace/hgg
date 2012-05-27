/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package stationcombinations;

/**
 *
 * @author admin
 */
public class Cluster {
    public static int[][] clusters;
    public static int clusterID = 1;
    /**
     * @param args the command line arguments
     */
    public static void main(double[] x, double[] y, double[] z) {
        // TODO code application logic here
        
        //double[] x = Main.m_x;//new double[]{1,1,2,14,25,36,43,44,44,1};
        //double[] y = Main.m_y;//new double[]{1,0,1,7,8,9,44,43,44,1};
        //double[] z = Main.m_z;//new double[]{1,1,1,1,1,1,1,1,1,1};
        
        // distances to all points, but only half matrix
        double[][] distances = new double[x.length][x.length];
        for(int i=0; i<distances.length; i++){
            for(int j=0; j<i; j++){
                distances[i][j] = Math.sqrt(Math.pow(x[j]-x[i],2)+Math.pow(y[j]-y[i],2)+Math.pow(z[j]-z[i],2));
                //System.out.print(distances[i][j]+";");
            }
            //System.out.println();
        }
        
        double distance = 0;
        int[] distance_ind = new int[2];
        int[][] distances_out = new int[x.length][x.length];
        int[] points_out = new int[x.length];
        int points_used =0;
        int counter = 0;
        int counter_start = 0;
        
        //System.out.println(((x.length)*(x.length)-(x.length))/2);
        while(points_used<x.length+1){
        //for(int k=0; k<((x.length)*(x.length)-(x.length))/2/2; k++){
            for(int i=0; i<distances.length; i++){
                for(int j=0; j<i; j++){ //half matrix, diagonal partition
                    
                    /* finding the shortest distance and sorting ascending.
                     * when found this distance is rulled out distances_out[i][j]==1
                     */
                    if(counter_start == counter){
                        distance = distances[i][j];
                        distance_ind[0]=i;
                        distance_ind[1]=j;
                    } else{
                        if(distance>distances[i][j] && distances_out[i][j]==0 && counter_start < counter){
                            distance = distances[i][j];
                            distance_ind[0]=i;
                            distance_ind[1]=j;
                        }
                    }
                    //System.out.print(distances[i][j]+";");
                    counter = counter+1;
                }
                //System.out.println();
            }
            
            /* using indices of current shortest distance to rule out the
             * distance and the corresponding points
             */
            distances_out[distance_ind[0]][distance_ind[1]] = 1;
            for(int r=0; r<points_out.length; r++){
                if(points_out[distance_ind[0]]==0){
                    points_out[distance_ind[0]] = 1;
                    //points_used = points_used+1;
                }
                if(points_out[distance_ind[1]]==0){
                    points_out[distance_ind[1]] = 1;
                    //points_used = points_used+1;
                }
            }
            points_used = points_used+1;
        
            //System.out.println(counter+";"+distance_ind[0]+";"+distance_ind[1]+"="+distance+";"+counter_start+";"+points_used);
            counter = 0;
            
            //tmp, not sure if still needed
            int test=0;
            for(int l=0; l<distance_ind[0]; l++){
                test = test+l;
            }
            test = test+distance_ind[1];
            
            if(test==counter_start){
                
                int c=0;
                int d=0;
                for(int i=0; i<distances.length; i++){
                    for(int j=0; j<i; j++){ //half matrix, diagonal partition
                        if(counter_start < c && d==0 && distances_out[i][j]==0){
                            d = 1;
                            counter_start = c;
                        }
                        c=c+1;
                    }
                }
            }
        }
        
        
        /*
        distances_out[4][0] = 1;
        distances_out[4][3] = 1;
        distances_out[5][3] = 1;
        distances_out[1][0] = 0;
        distances_out[9][0] = 0;
        distances_out[9][1] = 1;
        * 
        */
        
        
        /////////////////////////
        /* determination of cluster numbers.
         * this is done with their respection in matrix node connections
         */
        
        for(int i=0; i<distances_out.length; i++){
            /* filling the other half of the matrix accordingly to diagonal
             * with same values of one half
             */
            for(int j=0; j<i; j++){ //half matrix, diagonal partition
                    //System.out.print(distances_out[i][j]+";");
                    distances_out[j][i] = distances_out[i][j];
            }
            //System.out.println();
        }
        //System.out.println();
        
        /* displaying all the matrix cells
         * 
         */
        for(int i=0; i<distances_out.length; i++){
            for(int j=0; j<distances_out.length; j++){ //half matrix, diagonal partition
                    //System.out.print(distances_out[i][j]+";");
            }
            //System.out.println();
        }
        
        Cluster.clusters = new int[x.length][x.length];
        
        int[] pointstaken = new int[x.length];
        int yes = 0;
        
        for(int i=0; i<distances_out.length; i++){
            for(int j=0; j<distances_out.length; j++){ //half matrix, diagonal partition
                /* Cluster.clusters
                 * starts with 0 = no cluster
                 * >0 it has a cluster id.
                 * each node can be connected to a cluster, so "yes" will be
                 * switched with first node with connection and without set
                 * clusterID
                 */
                if(distances_out[j][i]!=0 && Cluster.clusters[j][i]==0){
                    pointstaken[i]=1;
                    pointstaken[j]=1;
                    Cluster.clusters[j][i] = Cluster.clusterID;//hier laufnummer
                    
                    yes=1;
                }
                
            }
            
            /*
             * when yes is >1, recursive cluster finding is used in each row
             * and line starting from the first "yes node".
             * when it's back out of recursive mode, yes is switched back
             * and line iteration is resumed and checked for unclustered nodes.
             */
            if(yes!=0){
                Cluster.ing(1,distances_out,pointstaken);
                Cluster.clusterID = Cluster.clusterID+1;
            }
            
            yes=0;
        }
    }
    
    
    public static void ing(int level, int[][]distances_out, int[] pointstaken){
        
        /*
         * level 0 and 1 switches line and row iteration to harvest through all
         * connected nodes and marking them with clusterID.
         */
        
        int yes=0;
        int[] pointstaken1 = new int[pointstaken.length];
        
        if(level==1){
            for(int j=0; j<distances_out.length; j++){
                if(pointstaken[j]==1){
                    for(int k=0; k<distances_out.length; k++){
                        if(distances_out[j][k]!=0 && Cluster.clusters[j][k]==0){
                            //System.out.println(j+";"+k+";"+distances_out[j][k]+";");
                            yes=1;
                            pointstaken1[j] = 1;
                            pointstaken1[k] = 1;
                            Cluster.clusters[j][k] = Cluster.clusterID;
                        }
                    }
                }
            }
        
            if(yes!=0){
                Cluster.ing(0,distances_out,pointstaken1);
            }
        } else if(level==0){
            for(int j=0; j<distances_out.length; j++){
                if(pointstaken[j]==1){
                    for(int k=0; k<distances_out.length; k++){
                        if(distances_out[k][j]!=0 && Cluster.clusters[k][j]==0){
                            //System.out.println(j+";"+k+";"+distances_out[k][j]+";");
                            yes=1;
                            pointstaken1[j] = 1;
                            pointstaken1[k] = 1;
                            Cluster.clusters[k][j] = Cluster.clusterID;
                        }
                    }
                }
            }
        
            if(yes!=0){
                Cluster.ing(1,distances_out,pointstaken1);
            }
        }
    }
}
