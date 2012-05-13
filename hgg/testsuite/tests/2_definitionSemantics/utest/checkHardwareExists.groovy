println "--------------------------------------------------------------------";
println "- Test Case: Check Definition of the testsuite for semantic errors -";
println "- Unit-Test: Needs to check that there is any hardware configured  -";
println "-            in the configuration file.                            -";
println "--------------------------------------------------------------------";
println "- written by the hackerspace global grid-team                      -";
println "- Licensed under Creative Commons. See http://hgg.aero for more    -";
println "- information.                                                     -";
println "--------------------------------------------------------------------";


import configuration.*;


println "Executing test.";

// fixture: make a dummy configuration and make sure, no hardware has been inserted.
def configuration = new Configuration();
assert configuration.hardware.size() == 0;

// execution: let the validator check for the object
def result = ConfigurationCheck.isValid(configuration);

// assertion: - check if the configuration is valid.
//            - check that the configuration has not been changed in regard to 
//              hardware.
assert result != null;
assert !result.isHappy();
assert result.getErrorSections().contains(ConfigurationCheck.HARDWARE);
assert configuration.hardware.size() == 0;

