/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pseudoranger;

import java.io.File;


/**
 *
 * @author horn
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    /**
     * @param args the command line arguments
     */
    static String dir = "";
    static String separator = "";
    static double c_light = 299792458.0; //speedolight m/s
    static double t0_real = 11223344.0;
    
    static double x0;
    static double y0;
    static double z0;
    static double t0;
    
    static int stations;
    
    static double[] x;
    static double[] y;
    static double[] z;
    static double[] t;
    static double[] s;
    static double[] station_latency;
    static double[] dt;
    
    // resulting beacon coordinates
    public static double[]  m_x;
    public static double[]  m_y;
    public static double[]  m_z;
    public static double[]  m_r;
    
    //test mode
    public static int testmode = 0; //0 no testing, 1 testing
    
    public static void main(String[] args) {
        // TODO code application logic here
        
        try 
        {   
            // for xml read in, get the path to .jar directory
            File jarFile = new File(Main.class.getProtectionDomain().getCodeSource().getLocation().toURI().getPath());
            File jarFolder = new File(jarFile.getParent());
            dir = jarFolder.toString();
            System.out.println(dir);   
        }
        catch (Exception e) 
        {
            System.out.println( "Something...");
        }
        separator = System.getProperty("file.separator");
        
        
        // config file read-in
        System.out.println("** LOADING CONFIG File **");
        InOut.XMLinConfig();
        InOut.XMLinStation();
        
        //FileWrite.main("test");

        if(testmode==0){
            System.out.println("** LOADING STATION LIST **");
            InOut.XMLinStation();
            System.out.println();
            System.out.println("** LOADING BEACON **");
            InOut.XMLinBeacon();
            System.out.println();
            
        } else if(testmode>1){
        
            System.out.println("** STARTING TEST MODE **");
            stations = 6;
        
            x = new double[stations];
                    x[0] = 10.0;
                    x[1] = 1000.0;
                    x[2] = 1100.0;
                    x[3] = 30.0;
                    x[4] = 20.0;
                    x[5] = 35.0;

            y = new double[stations];
                    y[0] = 10.0;
                    y[1] = 10.0;
                    y[2] = 20000.0;
                    y[3] = 20000.0;
                    y[4] = 200.0;
                    y[5] = 200.0;

            z = new double[stations];
                    z[0] = 10.0;
                    z[1] = 1000.0;
                    z[2] = 10.0;
                    z[3] = 500.0;
                    z[4] = 20.0;
                    z[5] = 200.0;
                    
            t = new double[stations];
        }
        
        s = new double[stations];
                for(int i=0; i<stations; i++){
                    s[i] = -1.0;
                }
                    
        station_latency = new double[stations];
        /*
                    station_latency[0] = 1.0/11000000.0;
                    station_latency[1] = 1.0/11000000.0;
                    station_latency[2] = 1.0/11000000.0;
                    station_latency[3] = 1.0/11000000.0;
                    * 
                    */
                    
        
        // proof for negative times and correct all times.
        dt = new double[stations]; // for runtime and ranging                    
                    System.out.print("dt: ");
                    for(int i=0; i<t.length; i++){
                        if(testmode>0){
                            // beacon data
                            x0 = 500.0;
                            y0 = 500.0;
                            z0 = 500.0;
                            t0 = t0_real-0.1;
            
                            t[i]    = t0_real+(Math.sqrt(Math.pow(x0-x[i],2)+Math.pow(y0-y[i],2)+Math.pow(z0-z[i],2))/Main.c_light);
                            System.out.print(t[i]+";");
                        }
                        dt[i]   = (t[i]-t0)-station_latency[i]; //t0+ nur zum testen
                    }
                    System.out.println();

        stationcombinations.Main.main(stations);
        
        int[] pointfilter = new int[m_x.length];
        for(int i=0; i<stationcombinations.Cluster.clusters.length; i++){
            for(int j=0; j<i; j++){
                if(stationcombinations.Cluster.clusters[i][j]!=0){
                    pointfilter[i]=stationcombinations.Cluster.clusters[i][j];
                    pointfilter[j]=stationcombinations.Cluster.clusters[i][j];
                }
            }
        }
        
        
        
        int counter = 0;
        for(int i=0; i<pointfilter.length; i++){
            if(pointfilter[i]!=0){
                counter = counter+1;
            }
        }
        
        //coordinate range
        double m_x_min = 0;
        double m_x_max = 0;
        double m_y_min = 0;
        double m_y_max = 0;
        double m_z_min = 0;
        double m_z_max = 0;
        
        double x_avg = 0.0;
        double y_avg = 0.0;
        double z_avg = 0.0;
        int counter_avg = 0;
        
        int bang = 0;
        for(int i=0; i<m_x.length; i++){
            if(pointfilter[i]!=0){
                if(bang==0 && Double.isNaN(m_x[i])!=true && Double.isNaN(m_y[i])!=true && Double.isNaN(m_z[i])!=true){
                    m_x_min = m_x[i];
                    m_x_max = m_x[i];
                    m_y_min = m_y[i];
                    m_y_max = m_y[i];
                    m_z_min = m_z[i];
                    m_z_max = m_z[i];
                    bang = 1;
                } else{
                    //x
                    if(m_x[i]<m_x_min){
                        m_x_min = m_x[i];
                    }
                    if(m_x[i]>m_x_max){
                        m_x_max = m_x[i];
                    }
                
                    //y
                    if(m_y[i]<m_y_min){
                        m_y_min = m_y[i];
                    }
                    if(m_y[i]>m_y_max){
                        m_y_max = m_y[i];
                    }
                
                    //z
                    if(m_z[i]<m_z_min){
                        m_z_min = m_z[i];
                    }
                    if(m_z[i]>m_z_max){
                        m_z_max = m_z[i];
                    }
                }
                //System.out.println("werte "+m_x[i]+";"+m_y[i]+";"+m_z[i]);
                if(Double.isNaN(m_x[i])!=true && Double.isNaN(m_y[i])!=true && Double.isNaN(m_z[i])!=true){
                    //
                    //System.out.println("werte "+m_x[i]+";"+m_y[i]+";"+m_z[i]);
                    x_avg = x_avg+m_x[i];
                    y_avg = y_avg+m_y[i];
                    z_avg = z_avg+m_z[i];
                    counter_avg = counter_avg+1;
                }
            }
        }
        x_avg = x_avg/counter_avg;
        y_avg = y_avg/counter_avg;
        z_avg = z_avg/counter_avg;
        
        System.out.println();
        System.out.println("** FILTERED RESULTS **");
        if(stationcombinations.Main.combinationCount==1){
            System.out.println("NOTE: only 4 stations, filter can't tell which of both results is correct without further estimations!");
        }
        System.out.println("*** taking all nodes of all clusters ("+counter+"/"+pointfilter.length+") ***");
        System.out.println("x min/max/avg "+m_x_min+";"+m_x_max+";"+x_avg);
        System.out.println("y min/max/avg "+m_y_min+";"+m_y_max+";"+y_avg);
        System.out.println("z min/max/avg "+m_z_min+";"+m_z_max+";"+z_avg);
        
        // filtering just the cluster with most nodes
        int[] clusterIDcount = new int[stationcombinations.Cluster.clusterID];
        int clusterIDmost = 0;
        int clusterIDmost_ind = 0;
        
        for (int i=0; i<stationcombinations.Cluster.clusterID; i++){
            for(int j=0; j<pointfilter.length; j++){
                if(pointfilter[j]==i){
                    clusterIDcount[i] = clusterIDcount[i]+1;
                }
            }
            if(i>0 && clusterIDcount[i]>=clusterIDmost){
                clusterIDmost = clusterIDcount[i];
                clusterIDmost_ind = i;
            }
        }
        
        //coordinate range
        double m_x_best_min = 0;
        double m_x_best_max = 0;
        double m_y_best_min = 0;
        double m_y_best_max = 0;
        double m_z_best_min = 0;
        double m_z_best_max = 0;
        
        double x_best_avg = 0.0;
        double y_best_avg = 0.0;
        double z_best_avg = 0.0;
        int counter_best_avg = 0;
        
        int bang_best = 0;
        for(int i=0; i<m_x.length; i++){
            if(pointfilter[i]!=0 && pointfilter[i]==clusterIDmost_ind){
                if(bang_best==0 && Double.isNaN(m_x[i])!=true && Double.isNaN(m_y[i])!=true && Double.isNaN(m_z[i])!=true){
                    m_x_best_min = m_x[i];
                    m_x_best_max = m_x[i];
                    m_y_best_min = m_y[i];
                    m_y_best_max = m_y[i];
                    m_z_best_min = m_z[i];
                    m_z_best_max = m_z[i];
                    bang_best = 1;
                } else{
                    //x
                    if(m_x[i]<m_x_best_min){
                        m_x_best_min = m_x[i];
                    }
                    if(m_x[i]>m_x_best_max){
                        m_x_best_max = m_x[i];
                    }
                
                    //y
                    if(m_y[i]<m_y_best_min){
                        m_y_best_min = m_y[i];
                    }
                    if(m_y[i]>m_y_best_max){
                        m_y_best_max = m_y[i];
                    }
                
                    //z
                    if(m_z[i]<m_z_best_min){
                        m_z_best_min = m_z[i];
                    }
                    if(m_z[i]>m_z_best_max){
                        m_z_best_max = m_z[i];
                    }
                }
                //System.out.println("werte "+m_x[i]+";"+m_y[i]+";"+m_z[i]);
                if(Double.isNaN(m_x[i])!=true && Double.isNaN(m_y[i])!=true && Double.isNaN(m_z[i])!=true){
                    //
                    //System.out.println("werte "+m_x[i]+";"+m_y[i]+";"+m_z[i]);
                    x_best_avg = x_best_avg+m_x[i];
                    y_best_avg = y_best_avg+m_y[i];
                    z_best_avg = z_best_avg+m_z[i];
                    counter_best_avg = counter_best_avg+1;
                }
            }
        }
        x_best_avg = x_best_avg/counter_best_avg;
        y_best_avg = y_best_avg/counter_best_avg;
        z_best_avg = z_best_avg/counter_best_avg;
        
        System.out.println("*** taking the cluster with most nodes ("+clusterIDmost+"/"+pointfilter.length+") ***");
        
        System.out.println("x min/max/avg "+m_x_best_min+";"+m_x_best_max+";"+x_best_avg);
        System.out.println("y min/max/avg "+m_y_best_min+";"+m_y_best_max+";"+y_best_avg);
        System.out.println("z min/max/avg "+m_z_best_min+";"+m_z_best_max+";"+z_best_avg);
        
        System.out.println("");
        System.out.println("## Lone Pseudoranger ##");
        System.out.println("## He can track you \"from out of the west with the speed of light and a hearty hi-yo Silver\" ##");
        System.out.println("### for Distributed Ground Station Network trilateration of beacon signals ###");
        System.out.println("### projects: www.aerospaceresearch.net/constellation ###");
        System.out.println("### projects: www.hgg.aero | www.shackspace.de ###");
        System.out.println();
        System.out.println("** end **");
    }
    
}
