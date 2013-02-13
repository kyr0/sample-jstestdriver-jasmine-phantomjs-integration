## Sample jsTestDriver / Jasmine BDD / Phantom JS automated unit testing setup

This boilerplate code shows you how to set up an automated, server-side test environment
for you frontend, JavaScript Unit tests using:

- Jasmine BDD (popular testing framework)
- jsTestDriver (automated test execution, server-side/multi-browser)
- PhantomJS for server-side automated test execution (you can add more cross-browser test instances)
- Source code and tests specs get auto-loaded using require.js (in LocalSpecRunner.html AND also in jsTestDriver mode)
- e.g. any other browser like Chrome, IE, Firefox, Safari, Opera to test your code automatically using jsTestDriver

It generates XML output that can be used in Jenkins to generate and show test result and code coverage reports.
Implemented using simple, dedicated shell scripts for a better readability.

### Requirements
- JRE 1.6 -> http://www.oracle.com/technetwork/java/javase/downloads/index.html -> Used to run jsTestDriver
- http://phantomjs.org/ -> PhantomJS is used for a completely headless execution of the JS tests

### How to: Local Unit Testing with Jasmine:
- Open LocalSpecRunner.html in a web browser

### How to: Server-side unit testing with Jasmine / PhantomJS (e.g. Jenkins integration)
- Have a look at the scripts used by startTesting.sh and learn ;-)
- Call ./startTesting.sh

### How to: Integrate with Jenkins
- Configure Jenkins reports to use the XML reports generated into the output folder.
- Configure Jenkins to call startTesting.sh each time a test build runs.

### How to: Add more tests and my own source code
- Configure Jenkins to copy your sources and test specs into the src/spec folders each time a build runs.
- Add the test specs to the jsTestDriver.conf 'test' section
- Add the test specs to the LocalSpecRunner.js 'specsToExecute' array (only needed if you want to use LocalSpecRunner.html)

### How to: Add more browsers to the automated jsTestDriver testing process
- Add execution calls to their binaries to the startTestBrowsers.sh that target to e.g. http://localhost:9876/capture