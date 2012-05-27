/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package stationcombinations;

import java.math.BigInteger;

/**
 *
 * @author admin
 */
public class Combination {
    public static Integer count(int stations, int leveldepth) {
        // n!/((n-k)! * k!) n=groundstations, k=needed groundstations (graph)
        // http://www.brefeld.homepage.t-online.de/stochastik-formeln.html
        
        Faculty fac=new Faculty();
        BigInteger combinations_numerator = fac.compute(stations);
        BigInteger combinations_denomerator = fac.compute(stations-leveldepth);
                   combinations_denomerator = combinations_denomerator.multiply(fac.compute(leveldepth));
        BigInteger combinations = combinations_numerator.divide(combinations_denomerator);
        int combis = Integer.parseInt(combinations.toString());
        
        return combis;
    }
}
