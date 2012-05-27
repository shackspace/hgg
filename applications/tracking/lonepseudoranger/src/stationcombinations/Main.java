/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package stationcombinations;

import pseudoranger.Correcting;

/**
 *
 * @author admin
 */
public class Main {
    
    public static int       counter = 0;
    public static int[]     takestations;
    public static int       combinationCount = 0;
    
    public static void main(int stations) {
        // TODO code application logic here
        
        //int stations = 4;
        
        /* compute all combinations for x stations out of level depth
         * because of log behaviour, BigInteger is used.
         */
        int leveldepth = 4;
        combinationCount = Combination.count(stations, leveldepth);
        System.out.println("All combination count: "+combinationCount);
        
        // pq-equation will result in maximal 2 solutions, so combinationCount*2
        pseudoranger.Main.m_x = new double[combinationCount*2];
        pseudoranger.Main.m_y = new double[combinationCount*2];
        pseudoranger.Main.m_z = new double[combinationCount*2];
        pseudoranger.Main.m_r = new double[combinationCount*2];
        
        int[] stationused = new int[stations];
        int[] stationtaken = new int[leveldepth];
        takestations = new int[leveldepth];
        int bump = 0;
        
        System.out.println("** STARTING PSEUDORANGING ***");
        level(leveldepth,0,stationused,stationtaken,bump);
        System.out.println();
        System.out.println("** STARTING CLUSTERING ***");
        Cluster.main(pseudoranger.Main.m_x, pseudoranger.Main.m_y, pseudoranger.Main.m_z);
    }
    
    public static void level(int leveldepth, int level, int[] stationused,int[] stationtaken, int bump){

        /*
         * calculating pseudoranging between all stations without reverse range.
         * 
         */
        if(level==leveldepth){
            System.out.println();
            System.out.print("*** level: "+level+" Station Code: ");
            for(int i=0; i<stationtaken.length;i++){
                takestations[i]=stationtaken[i];
                System.out.print(takestations[i]+";");
            }
            System.out.println(" "+(counter+1)+"of"+combinationCount+" ***");
            //Triangulate.main("");
            Correcting.Range();
            counter=counter+1;
        } else{
            for(int i=bump;i<stationused.length-stationtaken.length+level+1;i++){
                //System.out.println(i+";");
                stationtaken[level]=i;
                bump=i+1;
                level(leveldepth,level+1,stationused,stationtaken,bump);
            }
        }
    }
}
