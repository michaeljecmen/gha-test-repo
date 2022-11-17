#!/bin/bash

# pass name of test script as command line arg
# and the input urls as environment variables
echo "$$: running $1 tests"
echo "    $$: running tests with live url: $2"
echo "    $$: running tests with vod url: $3"
echo "    $$: running tests with clip url: $4"

# fail if PID is even, pass if odd
if [ $(($$%2)) -eq 0 ]; then
    echo "    $$: test FAILED"
    exit 1
fi
echo "    $$: test PASSED"
exit 0