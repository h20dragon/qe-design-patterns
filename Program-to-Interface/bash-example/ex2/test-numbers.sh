#!/usr/bin/env bash


LOG_FILE=/tmp/test-numbers.$$.xml

source utils.sh

pytest -q --junitxml=$LOG_FILE ./python-tests/test-numbers.py
python qe-reporter.py  --file=$LOG_FILE
RC=$?

genReport  "Python Number tests" "$RC"
exit $RC

