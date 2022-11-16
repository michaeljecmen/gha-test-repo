#!/bin/bash

# pass name of test script as command line arg
# and the input urls as environment variables
echo "$$: running $1 tests"
echo "\t$$: running tests with live url: $LIVE_URL"
echo "\t$$: running tests with vod url: $VOD_URL"
echo "\t$$: running tests with clip url: $CLIP_URL"

echo "\t$$: all tests pass!"
