#!/bin/bash

ROOTDIR="."
JSTD_VERSION=1.3.4.b

COMMAND=$1

echo "Killing JSTD Server"

PID=`cat $ROOTDIR/output/jstd.pid`
kill $PID

rm -f $ROOTDIR/output/jstd.out $ROOTDIR/output/jstd.err $ROOTDIR/output/jstd.pid
