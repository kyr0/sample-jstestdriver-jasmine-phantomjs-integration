#!/bin/bash

ROOTDIR="."
JSTD_VERSION=1.3.4.b

COMMAND=$1

if [ ! -f "$ROOTDIR/jars/jsTestDriver.jar" ]; then
    echo "Cannot find jars/jsTestDriver.jar"
fi

if [ ! -f "$ROOTDIR/jars/coverage.jar" ]; then
    echo "Cannot find jars/coverage.jar"
fi

if [ ! -f "$ROOTDIR/jsTestDriver.conf" ]; then
    echo "Cannot find jsTestDriver.conf"
fi

echo "Starting JSTD Server"

nohup java -jar $ROOTDIR/jars/jsTestDriver.jar --verbose --captureConsole --config jsTestDriver.conf --port 9876 > $ROOTDIR/output/jstd.out 2> $ROOTDIR/output/jstd.err < /dev/null &
echo $! > $ROOTDIR/output/jstd.pid
