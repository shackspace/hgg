#!/bin/sh

ORIGINDIR="$(pwd)"
BASEDIR="$(dirname $0)"

for DIR in $(find $BASEDIR -type d)
do
	if [ $(basename $DIR) != $BASEDIR ]
	then
		echo "Entering $DIR"
		cd $DIR
		echo "Building $DIR"
		make clean all 2>/dev/null >/dev/null && ./test
		cd $ORIGINDIR
	fi
done


