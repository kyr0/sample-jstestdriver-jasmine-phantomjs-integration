#!/bin/bash
echo "Stopping test browsers..."
bash phantomJSServer.sh stop

# Add calls to STOP scripts of your non-headless-browsers here
# e.g. Firefox, Remote-Internet Explorer, Chrome, Opera, ...