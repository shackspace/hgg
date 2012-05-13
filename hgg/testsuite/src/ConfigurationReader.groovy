/*
 * ConfigurationReader.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

import configuration.*;


/** 
 * class ConfigurationReader 
 * 
 * this defines an object to read Configuration Files for Test Suites.
 * @author armin
 */
class ConfigurationReader {

  /** 
   * reads a configuration file and returns a configuration object.
   * @return a Configuration object of type Configuration
   */
  public static readConfig(String filename) {
    return readConfigString(readFileContents(filename));
  }

  protected static readConfigString(content) {
    def xmlDoc = parseXml(content);

    def result = new Configuration();
    
    // dump the hardware information to the config.
    def hwList = (xmlDoc.hardware.uc instanceof List) ? xmlDoc.hardware.uc : [xmlDoc.hardware.uc];
    hwList.each({
      String type = it.'@hw';
      String subtype = it.'@subtype';
      String device = it.'@device';
      String id = it.'@id';

      result.hardware.add(new UC(type, subtype, device, id));
    });

    // dump the source folder information to the config.
    def sourceList = (xmlDoc.sources.source instanceof List) ? xmlDoc.sources.source : [xmlDoc.sources.source];
    sourceList.each({
      String folder = it.'@folder';
      String makefile = it.'@makefile';
      String buildTarget = it.'@buildtarget';
      String cleanTarget = it.'@cleantarget';
      String output = it.'@output';

      result.sources.add(new SourceFolder(folder, makefile, buildTarget, cleanTarget, output));
    });

	// dump the list of testcases to the config.
    def testCaseList = (xmlDoc.testcases.testcase instanceof List) ? xmlDoc.testcases.testcase : [xmlDoc.testcases.testcase];
    testCaseList.each({
      String name = it.'@name';
      String description = it.description.text();
      List threadsList = [];
      ((it.thread instanceof List) ? it.thread : [it.thread]).each({ 
        String sourceFile = it.srcfile instanceof List ? it.srcfile[0].'@name' : it.srcfile.'@name';
		String hwName = it.'@hwref'; 
        String expectedResult = it.expectedresult.text();
        threadsList.add(new TestCaseThread(hwName, sourceFile, expectedResult));
      });

      result.testcases.add(new TestCase(name, description, threadsList));
    });

    // read the workdir to do the stuff from.
    def workdir = (xmlDoc.workdir instanceof List) ? xmlDoc.workdir[0] : xmlDoc.workdir;
    if(workdir != null) {
      result.setWorkdir(workdir.text());
    } else {
      result.setWorkdir('defaultWork/');
    }

    // return the resulting Configuration object
    return result;
  }



  protected static String readFileContents(filename) {
    return new File(filename).text;
  }

  protected static Object parseXml(contents) {
    return new XmlParser().parseText(contents);
  }

}

