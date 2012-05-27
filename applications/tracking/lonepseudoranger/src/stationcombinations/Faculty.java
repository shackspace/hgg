/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package stationcombinations;

/**
 *
 * @author http://www.java-forum.org/hausaufgaben/83145-fakultaeten-berechnen.html#_
 */
import java.math.BigInteger;
 
public class Faculty {
 
    public BigInteger compute(int n) {
         BigInteger result = BigInteger.ONE;
         for (int i=1; i<=n; i++) {
             result = result.multiply(BigInteger.valueOf(i));
         }
         return result;
    }
}
