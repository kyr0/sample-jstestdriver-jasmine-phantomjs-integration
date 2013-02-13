#!/bin/bash

ROOTDIR="."

COMMAND=$1

command -v phantomjs >/dev/null 2>&1 || { echo "Can't find phantomjs, please make sure it's on your PATH." >&2; exit 1; }

if [[ $COMMAND == "start" ]]; then

    echo "Starting PhantomJS"
    wait 2
    phantomjs phantomJSTestDriver.js &
    echo $! > $ROOTDIR/output/phantomjs.pid
fi

if [[ $COMMAND == "stop" ]]; then

    echo "Killing PhantomJS"

    PID=`cat $ROOTDIR/output/phantomjs.pid`
    kill $PID

    rm -f $ROOTDIR/output/phantomjs.out $ROOTDIR/output/phantomjs.err $ROOTDIR/output/phantomjs.pid
fi

