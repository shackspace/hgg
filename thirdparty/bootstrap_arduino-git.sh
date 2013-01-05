#!/bin/sh

VERSION=1.0.3

mkdir -p arduino
cd arduino
rm -rf arduino-* libs

wget -nc http://arduino.googlecode.com/files/arduino-${VERSION}-src.tar.gz
tar xzvf arduino-${VERSION}-src.tar.gz arduino-${VERSION}/hardware/arduino/cores/arduino/
tar xzvf arduino-${VERSION}-src.tar.gz arduino-${VERSION}/hardware/arduino/variants/mega/

mv arduino-${VERSION} libs

cd ..
