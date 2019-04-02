#!/usr/bin/env bash

THIS="${BASH_SOURCE[0]##*/}"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

LOG_DIR="$SCRIPT_DIR/output"
TEST_LOG="$LOG_DIR/result.log"

mkdir -p "$LOGDIR"

summary()
{
    passed=$(grep ' : Pass$' output/result.log |wc -l)
    failed=$(grep ' : Fail$' output/result.log |wc -l)

    ((total=passed + failed))

    printf "\n\n== SUMMARY ==\n"
    printf "o passed: %s\n"  $passed
    printf "o failed: %s\n"  $failed
    printf "Total : %s\n"  $total
}


#
# We are confident that our tests leverage 'genReport', therefore running aggregate filters
# are simple and easy.
#
test_regression()
{
    printf "== [$THIS] $(date) REGRESSION TESTS ==\n"
    $SCRIPT_DIR/test-search.sh  --search Elvis --file ../ex1/data/data-1.txt
    $SCRIPT_DIR/test-checkday.sh --day Mon
    $SCRIPT_DIR/test-search.sh  --search Waldo --file ../ex1/data/data-1.txt
    $SCRIPT_DIR/test-search.sh  --search Paul --file ../ex1/data/data-1.txt
    $SCRIPT_DIR/test-numbers.sh
}


test_regression 2>&1 | tee $TEST_LOG

summary


