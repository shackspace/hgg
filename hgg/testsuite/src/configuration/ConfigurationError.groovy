/*
 * ConfigurationError.groovy
 * (c) 2012, hackerspace global grid (hgg.aero) 
 * developed by Armin Bauer (armin@hgg.aero)
 * Distributed under the terms of the creative commons license (cc-by-sa-nc). 
 * For more information see http://hgg.aero)
 */

package configuration;


/** 
 * class ConfigurationError 
 * 
 * this defines an class for informing about semantic errors in a configuration
 * file.
 * @author armin
 */
public class ConfigurationError {

  private errorSections = [];
  private errorMessages = [:];

  public ConfigurationError() {

  }

  /** 
   * @return a list of sections that had errors while processing the configuration
   */
  public getErrorSections() {
    return errorSections;
  }

  /** 
   * @param section the section to search for. strings from errorSections can be used.
   * @return all error messages for a given section.
   */
  public getErrorMessages(section) {
    return errorMessages;
  }
  
  /** 
   * @return this method returns true if no errors were found.
   */
  public boolean isHappy() {
    return errorSections.isEmpty();
  }

  /** 
   * adds an error
   * @param section the section to add this message to
   * @param message the message to add
   */
  public void addErrorMessage(String section, String message) {
    if(! errorSections.contains(section) ) {
      errorSections.add(section);
      errorMessages.put(section, []);
    }

    errorMessages[section].add(message);
  }
}

