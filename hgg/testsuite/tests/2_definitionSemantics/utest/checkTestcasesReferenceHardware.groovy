println "--------------------------------------------------------------------";
println "- Test Case: Check Definition of the testsuite for semantic errors -";
println "- Unit-Test: ensures that the Validity checker tests that hardware -";
println "-            references in the testcases point to existing hard-   -";
println "-            ware defined before                                   -";
println "--------------------------------------------------------------------";
println "- written by the hackerspace global grid-team                      -";
println "- Licensed under Creative Commons. See http://hgg.aero for more    -";
println "- information.                                                     -";
println "--------------------------------------------------------------------";


import configuration.*;


println "Executing test.";

// fixture: make two dummy configurations with hardware and testcases and 
//          make the testcase reference an existing hw for one, and a nonexisting 
//          for the other one
def conf1 = new Configuration();
def conf2 = new Configuration();

conf1.workdir = "test123";
conf2.workdir = "test123";

conf1.sources.add( new SourceFolder("folder", "makefile", "buildTarget", "cleanTarget", "output") );
conf2.sources.add( new SourceFolder("folder", "makefile", "buildTarget", "cleanTarget", "output") );

conf1.testcases.add( new TestCase("test1", "test", [new TestCaseThread("existingHardware", "sourcefile", "0")]) );
conf2.testcases.add( new TestCase("test1", "test", [new TestCaseThread("nonExistingHardware", "sourcefile", "0")]) );

conf1.hardware.add( new UC("type", "subtype", "device", "existingHardware") );
conf2.hardware.add( new UC("type", "subtype", "device", "existingHardware") );


// execution: let the validator check for the object
def result1 = ConfigurationCheck.isValid(conf1);
def result2 = ConfigurationCheck.isValid(conf2);

// assertion: - check if the configuration is valid.
//            - check that the configuration has not been changed in regard to 
//              hardware.
assert result1 != null && result2 != null;
assert result1.happy == true && result2.happy == false;
assert result2.getErrorSections().contains(ConfigurationCheck.TESTS);

