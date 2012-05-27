/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pseudoranger;

/**
 *
 * @author admin
 */
public class Correcting {
    public static void Range(){
        
        int stations = 4;
        double[] x = new double[stations];
                    x[0] = pseudoranger.Main.x[stationcombinations.Main.takestations[0]];
                    x[1] = pseudoranger.Main.x[stationcombinations.Main.takestations[1]];
                    x[2] = pseudoranger.Main.x[stationcombinations.Main.takestations[2]];
                    x[3] = pseudoranger.Main.x[stationcombinations.Main.takestations[3]];
                    
        double[] y = new double[stations];
                    y[0] = pseudoranger.Main.y[stationcombinations.Main.takestations[0]];
                    y[1] = pseudoranger.Main.y[stationcombinations.Main.takestations[1]];
                    y[2] = pseudoranger.Main.y[stationcombinations.Main.takestations[2]];
                    y[3] = pseudoranger.Main.y[stationcombinations.Main.takestations[3]];
                    
        double[] z = new double[stations];
                    z[0] = pseudoranger.Main.z[stationcombinations.Main.takestations[0]];
                    z[1] = pseudoranger.Main.z[stationcombinations.Main.takestations[1]];
                    z[2] = pseudoranger.Main.z[stationcombinations.Main.takestations[2]];
                    z[3] = pseudoranger.Main.z[stationcombinations.Main.takestations[3]];
                    
        double[] s = new double[stations];
                    s[0] = pseudoranger.Main.s[stationcombinations.Main.takestations[0]];
                    s[1] = pseudoranger.Main.s[stationcombinations.Main.takestations[1]];
                    s[2] = pseudoranger.Main.s[stationcombinations.Main.takestations[2]];
                    s[3] = pseudoranger.Main.s[stationcombinations.Main.takestations[3]];
                    
        double[] dt = new double[stations];
                    dt[0] = pseudoranger.Main.dt[stationcombinations.Main.takestations[0]];
                    dt[1] = pseudoranger.Main.dt[stationcombinations.Main.takestations[1]];
                    dt[2] = pseudoranger.Main.dt[stationcombinations.Main.takestations[2]];
                    dt[3] = pseudoranger.Main.dt[stationcombinations.Main.takestations[3]];
        System.out.println("**** Processing those station parameters: ****");
        System.out.println("X "+x[0]+";"+x[1]+";"+x[2]+";"+x[3]);
        System.out.println("Y "+y[0]+";"+y[1]+";"+y[2]+";"+y[3]);
        System.out.println("Z "+z[0]+";"+z[1]+";"+z[2]+";"+z[3]);
        System.out.println("dt "+dt[0]+";"+dt[1]+";"+dt[2]+";"+dt[3]);
        
        double x0 = pseudoranger.Main.x0;
        double y0 = pseudoranger.Main.y0;
        double z0 = pseudoranger.Main.z0;
                    
                    /* beacon system time could be so bad in relation to "exact"
                     * gps time, what is expacted to be correct, that negative
                     * runtimes from beacon to groundstation can occur.
                     * In this case this is corrected here by correcting all
                     * runntimes by the biggest negative run time forcing one
                     * sphere to become a "dot".
                     * In case of no negative runtime, this is skipped.
                     */
                    
                    double dt_correction_tmp = 0.0;
                    double dt_correction = 0.0;

                    for(int i=0; i<dt.length; i++){
                        if(dt[i]<=0.0){
                        //if(t[i]<=t0){
                            //System.out.println("sss"+i+";"+(t[i]-t0)+";"+dt[i]);
                            if(dt[i]<=dt_correction_tmp){
                                dt_correction_tmp = dt[i];
                                //System.out.println("ssskorrr"+dt_correction_tmp);
                            }
                        }
                    }

                    if(dt_correction_tmp<0.0){
                        dt_correction = dt_correction_tmp;
                        System.out.println("Time correction "+dt_correction);
                        for(int i=0; i<4; i++){
                            System.out.print("dt["+i+"]"+dt[i]+";");
                            dt[i]   = dt[i]-dt_correction; //minutes times MINUS dt_correction
                            System.out.println(dt[i]+";");
                        }
                    } else{
                        dt_correction = 0.0;
                    }
                    System.out.println("beacon timesource off by "+dt_correction+" seconds");


        double[]    dr = new double[4];
                    dr[0] = 0;
                    dr[1] = 0;
                    dr[2] = 0;
                    dr[3] = 0;

        double[]    r = new double[4];
                    for(int i=0; i<r.length; i++){
                        r[i] = dr[i]+Main.c_light*dt[i];
                    }
                    
                    System.out.println("radius1 "+r[0]+";"+r[1]+";"+r[2]+";"+r[3]);
        
        Apollonius.ThreeD(x, y, z, s, r, x0, y0, z0);
    }
}
