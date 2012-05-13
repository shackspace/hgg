println "----------------------------------------------------------------------------------";
println "- Test Case: Definition of a test suite                                          -";
println "- Unit test: the Configuration parser reads hardware info into the config object -";
println "----------------------------------------------------------------------------------";
println "- hgg.aero                                                                       -";
println "- Licensed under Creative Commons. See http://hgg.aero for more information.     -";
println "----------------------------------------------------------------------------------";


print "Executing test ...";

// execution: try to parse the xml file
def config = ConfigurationReader.readConfigString('''<?xml version="1.0" encoding="UTF-8" ?>
<suite>
  <hardware>
    <uc hw="arduino" subtype="mega2560" device="/dev/ttyACM0" id="celestia" />
  </hardware>
</suite>
''');

// assertion: there's something in the text file.
assert config != null;
assert config.hardware.size() == 1;
assert config.hardware[0].id == "celestia";

println " success.";
println "";

