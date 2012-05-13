println "-----------------------------------------";
println "- Test Case: Definition of a test suite -";
println "- Unit test:    -";
println "-----------------------------------------";
println "- hgg.aero                              -";
println "- Licensed under Creative Commons. See  -";
println "- http://hgg.aero for more information. -";
println "-----------------------------------------";


print "Executing test ...";

// execution: try to parse the xml file
def text = ConfigurationReader.parseXml("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<test>Hallo Welt</test>");

// assertion: there's something in the text file.
assert text.toString().substring(0, 4) == "test";
assert text.toString().contains("[Hallo Welt]");

println " success.";
println "";

