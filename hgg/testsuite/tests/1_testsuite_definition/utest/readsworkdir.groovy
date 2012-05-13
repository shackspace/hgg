println "----------------------------------------------------------------------";
println "- Test Case: Definition of a test suite                              -";
println "- Unit test: ensures that the configuration will contain the working -";
println "-            directory for the compiler.                             -";
println "----------------------------------------------------------------------";
println "- hgg.aero                                                           -";
println "- Licensed under Creative Commons. See http://hgg.aero for more      -";
println "- information                                                        -";
println "----------------------------------------------------------------------";


print "Executing test ...";

// execution: try to parse the xml file
def configuration = ConfigurationReader.readConfigString('''<?xml version=\"1.0\" encoding=\"UTF-8\" ?>
<suite>
  <workdir>myWorkdir</workdir>
</suite>
''');

// assertion: testcase was read.
assert configuration.workdir == 'myWorkdir';

println " success.";
println "";

