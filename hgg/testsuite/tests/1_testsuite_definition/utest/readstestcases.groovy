println "------------------------------------------------------------------------------";
println "- Test Case: Definition of a test suite                                      -";
println "- Unit test: ensures that testcases are being read from the configuration.   -";
println "------------------------------------------------------------------------------";
println "- hgg.aero                                                                   -";
println "- Licensed under Creative Commons. See http://hgg.aero for more information. -";
println "------------------------------------------------------------------------------";


print "Executing test ...";

// execution: try to parse the xml file
def configuration = ConfigurationReader.readConfigString('''<?xml version=\"1.0\" encoding=\"UTF-8\" ?>
<suite>
  <testcases>
    <testcase name="A test">
      <description><![CDATA[A description]]></description>
      <thread name="celestia">
        <srcfile name="tests/1_testsuite_definition/celestia.c" />
        <expectedresult>0,1,3</expectedresult>
      </thread>
    </testcase>
  </testcases>
</suite>
''');

// assertion: testcase was read.
assert configuration.testcases.size() == 1;
assert configuration.testcases[0].name == 'A test';
assert configuration.testcases[0].description == 'A description';
assert configuration.testcases[0].threads[0].name == 'celestia';
assert configuration.testcases[0].threads[0].srcfile == 'tests/1_testsuite_definition/celestia.c';
assert configuration.testcases[0].threads[0].expectedResult == '0,1,3';

println " success.";
println "";

