println "-----------------------------------------------------------";
println "- Test Case: Definition of a test suite                   -";
println "- Unit test: reads the configuration of the sourcefiles   -";
println "-----------------------------------------------------------";
println "- hgg.aero                                                -";
println "- Licensed under Creative Commons. See  http://hgg.aero   -";
println "- for more information.                                   -";
println "-----------------------------------------------------------";


print "Executing test ...";


// execution: try to read a text
def config = ConfigurationReader.readConfigString('''<?xml version="1.0" encoding="UTF-8" ?>
<suite>
  <sources>
    <source folder="tests/1_testsuite_definition/src" makefile="makefile" buildtarget="all" cleantarget="clean" output="build/magic.a" />
  </sources>
</suite>
''');


// assertion: there's something in the text file.
assert config.sources.size() == 1;
assert config.sources[0].folder == 'tests/1_testsuite_definition/src';
assert config.sources[0].makefile == 'makefile';
assert config.sources[0].output == 'build/magic.a';
assert config.sources[0].buildTarget == 'all';
assert config.sources[0].cleanTarget == 'clean';

println " success.";
println "";

