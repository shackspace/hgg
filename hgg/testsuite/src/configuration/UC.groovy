/*
 * UC.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

package configuration;


/** 
 * class UC 
 * 
 * this defines a configuration object that contains hardware information.
 * @author armin
 */
public class UC {
  private String type;
  private String subtype;
  private String device;
  private String id;

  public UC(String type, String subtype, String device, String id) {
    this.type = type;
    this.subtype = subtype;
    this.device = device;
    this.id = id;
  }

  public String getType() { 
    return type; 
  }

  public String getSubtype() {
    return subtype;
  }

  public String getDevice() { 
    return device;
  }

  public String getId() {
    return id;
  }

}

