#!/bin/sh

svn checkout http://googlemock.googlecode.com/svn/trunk/ gmock-svn
cd gmock-svn
autoreconf -vfi
./configure
make
cd ..
