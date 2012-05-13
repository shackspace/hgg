

# Compile Code and test it.
all: generate iTest


# Compile the sourcecode of the test framework.
generate: 
	groovyc -d build/ src/*.groovy


# Perform integration Tests.
iTest: definitionTest

# Integration Test: 
# Check if the Configuration Parser reads the configuration in a Configuration Structure
# correctly.
definitionTest: definitionUTest
	groovy -classpath build/ tests/1_testsuite_definition/test.groovy

definitionUTest:
	groovy -classpath build/ tests/1_testsuite_definition/utest/readfile.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/parsexml.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readshardwareinfo.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readssources.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readstestcases.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readsworkdir.groovy

# cleanup the build result.
clean:
	rm build/* -rf


