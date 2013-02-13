#!/bin/bash
rm -r output
mkdir output
mkdir output/coverage
bash startJSTestDriver.sh
sleep 2
bash startTestBrowsers.sh
sleep 10
bash runJasmineTests.sh
bash stopJSTestDriver.sh
bash stopTestBrowsers.sh