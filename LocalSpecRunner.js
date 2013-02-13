/**
 * List the tests that will be run with LocalSpecRunner.html here:
 */
var specsToExecute = [
    "spec/fooSpec"
];

// DO NOT CHANGE FROM HERE ON
require.config({
    baseUrl: "./",
    paths: {
        "text": "lib/require/require-text"
    }
});

require(specsToExecute,

    function () {

        "use strict";

        Ext.onReady(function () {

            Ext.getBody().update("Waiting for tests to be loaded...");

            setTimeout(function () {

                var jasmineEnv = jasmine.getEnv();
                jasmineEnv.updateInterval = 1000;

                var htmlReporter = new jasmine.HtmlReporter();
                jasmineEnv.addReporter(htmlReporter);

                jasmineEnv.specFilter = function (spec) {
                    return htmlReporter.specFilter(spec);
                };
                jasmineEnv.execute();
            }, 1000);
        });

    });
