println "-----------------------------------------";
println "- Test Case: Definition of a test suite -";
println "-----------------------------------------";
println "- hgg.aero                              -";
println "- Licensed under Creative Commons. See  -";
println "- http://hgg.aero for more information. -";
println "-----------------------------------------";

println "Executing test.";

def configReader = new ConfigurationReader();
def configuration = configReader.readConfig("tests/1_testsuite_definition/suite.xml");

assert configuration != null;
assert configuration.hardware.size() == 3;
assert configuration.sources.size() == 1;
assert configuration.testcases.size() == 1;

