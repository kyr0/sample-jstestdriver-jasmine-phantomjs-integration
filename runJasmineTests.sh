#!/bin/bash
echo "Starting testing..."
java -jar jars/jsTestDriver.jar --testOutput output --captureConsole --runnerMode DEBUG --tests all --verbose

echo "Transform coverage report to XML..."

cd output
../bin/gcovr.py -r . --xml >coverage/coverage.xml