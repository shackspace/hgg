/*
 * SourceFolder.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

package configuration;


/** 
 * class SourceFolder
 * 
 * this defines a configuration object that contains information about the source folder to compile 
 * before launching the tests.
 * @author armin
 */
public class SourceFolder {

  private String folder;
  private String makefile;
  private String buildTarget;
  private String cleanTarget;
  private String output;


  public SourceFolder(String folder, String makefile, String buildTarget, String cleanTarget, String output) {
    this.folder = folder;
    this.makefile = makefile;
    this.buildTarget = buildTarget;
    this.cleanTarget = cleanTarget;
    this.output = output;
  }

  public String getFolder() {
    return folder;
  }

  public String getMakefile() {
    return makefile;
  }

  public String getBuildTarget() {
    return buildTarget;
  }

  public String getCleanTarget() {
    return cleanTarget;
  }

  public String getOutput() {
    return output;
  }
}

