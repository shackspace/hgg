/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pseudoranger;

/**
 *
 * @author horn
 */
import java.io.*;

class FileWrite 
{
 public static void main(String args)
  {
  try{
  // Create file 
  FileWriter fstream = new FileWriter(Main.dir+""+Main.separator+""+"out.txt");
  BufferedWriter out = new BufferedWriter(fstream);
  out.write("Hello Java");
  out.newLine();
  out.write("Hello Java3");
  //Close the output stream
  out.close();
  }catch (Exception e){//Catch exception if any
  System.err.println("Error: " + e.getMessage());
  }
  }
}
