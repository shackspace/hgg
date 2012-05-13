println "--------------------------------------------------------------------";
println "- Test Case: Check Definition of the testsuite for semantic errors -";
println "--------------------------------------------------------------------";
println "- written by the hackerspace global grid-team                      -";
println "- Licensed under Creative Commons. See http://hgg.aero for more    -";
println "- information.                                                     -";
println "--------------------------------------------------------------------";

println "Executing test.";

// execution: read the configuration file.
def configuration = ConfigurationReader.readConfig("tests/2_definitionSemantics/suite.xml");

// assertion: check if the configuration is valid.
assert ConfigurationCheck.isValid(configuration);


