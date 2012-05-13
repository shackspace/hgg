println "--------------------------------------------------------------------";
println "- Test Case: Check Definition of the testsuite for semantic errors -";
println "- Unit-Test: ensure that a sourcedir, makefile, etc is given       -";
println "--------------------------------------------------------------------";
println "- written by the hackerspace global grid-team                      -";
println "- Licensed under Creative Commons. See http://hgg.aero for more    -";
println "- information.                                                     -";
println "--------------------------------------------------------------------";


import configuration.*;


println "Executing test.";

// fixture: make a dummy configuration and make sure, no source has been inserted.
def configuration = new Configuration();
assert configuration.sources.size() == 0;

// execution: let the validator check for the object
def result = ConfigurationCheck.isValid(configuration);

// assertion: - check if the configuration is valid.
//            - check that the configuration has not been changed in regard to 
//              hardware.
assert result != null;
assert !result.isHappy();
assert result.getErrorSections().contains(ConfigurationCheck.SOURCES);
assert configuration.sources.size() == 0;


// fixture: make a dummy configuration with a source entry that is incomplete 
def otherConfiguration = new Configuration();

// execution: let the validator check the object.
result = ConfigurationCheck.isValid(otherConfiguration);

// assertion: check if the configuration is valid
assert result != null;
assert !result.isHappy();
assert result.getErrorSections().contains(ConfigurationCheck.SOURCES);
assert configuration.sources.size() == 0;



// execution: let the validator check the object.
result = ConfigurationCheck.isValid(otherConfiguration);

// assertion: check if the configuration is valid
assert result != null;
assert !result.isHappy();
assert result.getErrorSections().contains(ConfigurationCheck.SOURCES);
assert configuration.sources.size() == 0;


