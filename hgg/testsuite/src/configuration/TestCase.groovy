/*
 * TestCase.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

package configuration;


/** 
 * class TestCase
 * 
 * this defines a configuration object that contains information about a test case 
 * @author armin
 */
public class TestCase {

  private String name;
  private String description;
  private List threadList = [];

  public TestCase(String name, String description, List threadList) {
    this.name = name;
    this.description = description;
    this.threadList = threadList;
  }

  public String getName() {
    return name;
  }

  public String getDescription() {
    return description;
  }

  public List getThreadList() {
    return threadList;
  }
}

