println "-----------------------------------------";
println "- Test Case: Definition of a test suite -";
println "- Unit test: reads the configuration    -";
println "-----------------------------------------";
println "- hgg.aero                              -";
println "- Licensed under Creative Commons. See  -";
println "- http://hgg.aero for more information. -";
println "-----------------------------------------";


print "Executing test ...";


// execution: try to read a text
def text = ConfigurationReader.readFileContents("tests/1_testsuite_definition/suite.xml");

// assertion: there's something in the text file.
assert text != null;

println " success.";
println "";

