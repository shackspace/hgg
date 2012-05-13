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
class Configuration {

  private List hardware = [];
  private List sources = [];

  public Configuration() {

  }

  public List getHardware() {
    return hardware;
  }

  public List getSources() {
    return sources;
  }

};

