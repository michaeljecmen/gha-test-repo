#!/bin/bash

# pass name of test script as command line arg
# and the input urls as environment variables
echo "$$: running $1 tests"

LIVE_URL=$(python3 -c "import sys, json; print(json.load(sys.stdin)['live'])")
VOD_URL=$(python3 -c "import sys, json; print(json.load(sys.stdin)['vod'])")
CLIP_URL=$(python3 -c "import sys, json; print(json.load(sys.stdin)['clip'])")
echo "    $$: running tests with live url: $LIVE_URL"
echo "    $$: running tests with vod url: $VOD_URL"
echo "    $$: running tests with clip url: $CLIP_URL"

# fail if PID is even, pass if odd
if [ $(($$%2)) -eq 0 ]; then
    echo "    $$: test FAILED"
    exit 1
fi
echo "    $$: test PASSED"
exit 0