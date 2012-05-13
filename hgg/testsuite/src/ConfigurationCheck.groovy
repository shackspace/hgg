/*
 * ConfigurationCheck.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

import configuration.ConfigurationError;
import configuration.Configuration;

/** 
 * class ConfigurationCheck 
 * 
 * this defines an class for checking Configuration Files for semantic 
 * errors.
 * @author armin
 */
class ConfigurationCheck {

  public static String HARDWARE = 'hardware';
  public static String SOURCES = 'sources';
  public static String WORKDIR = 'workdir';
  public static String TESTS = 'tests';

  /** 
   * this method checks for semantic errors in a Configuration. 
   * @param config the configuration object to be checked for validity
   * @return returns a ConfigurationError Object. If no errors were found it's isHappy() function will return true 
   */
  public static ConfigurationError isValid(Configuration config) {
    def result = new ConfigurationError();

    // check if hardware section is present.
    if(config.hardware.size() == 0) {
      result.addErrorMessage(HARDWARE, "i18n.errors.hardware.notpresent");
    }

    // check that source paths are present.
    if(config.sources.size() == 0) {
      result.addErrorMessage(SOURCES, "i18n.errors.sources.notpresent");
    }
    
    // check that source information is complete.
    config.sources.each({ source -> 
      if(source.folder == null || source.makefile == null || source.buildTarget == null || source.cleanTarget == null || source.output == null) {
        result.addErrorMessage(SOURCES, "i18n.errors.sources.incomplete");
      }
      if(source.folder == "" || source.makefile == "" || source.buildTarget == "" || source.cleanTarget == "" || source.output == "") {
        result.addErrorMessage(SOURCES, "i18n.errors.sources.incomplete");
      }
    });

    // check that a workdir was given
    if(config.workdir == null || config.workdir == '') {
      result.addErrorMessage(WORKDIR, 'i18n.errors.workdir.notpresent');
    }
    
    // check that hardware referenced in the testcases exists.
    config.testcases.each({ testcase -> 
      testcase.threadList.each({ thread -> 
        def found = false;

        config.hardware.each({ uc -> 
          if(uc.id == thread.name) { 
            found = true;
          }
        });

        // not found => add error message.
        if(!found) {
          result.addErrorMessage(TESTS, 'i18n.errors.tests.invalidHardware');
        }
      });
    });

    return result;
  }
  
  
}

