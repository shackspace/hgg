

all: generate
	groovy -classpath build/ tests/1_testsuite_definition/utest/readfile.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/parsexml.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readshardwareinfo.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readssources.groovy
	groovy -classpath build/ tests/1_testsuite_definition/utest/readstestcases.groovy
	groovy -classpath build/ tests/1_testsuite_definition/test.groovy


generate: 
	groovyc -d build/ src/*.groovy

clean:
	rm build/* -rf


