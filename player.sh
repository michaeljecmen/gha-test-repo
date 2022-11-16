#!/bin/bash

# pass name of test script as command line arg
# and the input urls as environment variables
echo "$$: running $1 tests"
echo "\t$$: running tests with live url: $LIVE_URL"
echo "\t$$: running tests with vod url: $VOD_URL"
echo "\t$$: running tests with clip url: $CLIP_URL"

# fail if PID is odd, pass if even
if [ $(($$%2)) -eq 0 ]; then
    echo "\t$$: test FAILED"
    exit(1)
fi
echo "\t$$: test PASSED"
exit(0)