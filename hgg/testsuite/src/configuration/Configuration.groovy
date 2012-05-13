/*
 * Configuration.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

package configuration;


/** 
 * class Configuration 
 * 
 * this defines a configuration object containing the configuration.
 * @author armin
 */
public class Configuration {

  private String workdir;
  private List hardware = [];
  private List sources = [];
  private List testcases = [];

  public Configuration() {

  }

  public String getWorkdir() {
    return workdir;
  }

  public String setWorkdir(value) {
    workdir = value;
  }

  public List getHardware() {
    return hardware;
  }

  public List getSources() {
    return sources;
  }

  public List getTestcases() {
    return testcases;
  }

};

