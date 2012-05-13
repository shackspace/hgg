/*
 * TestCaseThread.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

package configuration;


/** 
 * class TestCaseThread
 * 
 * keeps information about a Thread to run on a device.
 * @author armin
 */
public class TestCaseThread {
  
  private String name;
  private String sourceFile;
  private String expectedResult;

  public TestCaseThread(String name, String sourceFile, String expectedResult) {
    this.name = name;
    this.sourceFile = sourceFile;
    this.expectedResult = expectedResult;
  }

  public String getName() {
    return name;
  }

  public String getSourceFile() {
    return sourceFile;
  }

  public String getExpectedResult() { 
    return expectedResult;
  }
}

