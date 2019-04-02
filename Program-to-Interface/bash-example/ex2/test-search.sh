#!/usr/bin/env bash

source utils.sh

TEST_TYPE="func"
LOG=/tmp/$$.log

TEST_FILE=""
SEARCH_WORD=""


HELP_STR="

test-1.sh  --search Elvis  --file <Path to file>


Example:

test-1.sh --file data/data-1.txt --search Elvis


"

while [[ $# -gt 0 ]]; do
    key="$1"
    shift

    case $key in

        --search)
            SEARCH_WORD="$1"
            shift
            ;;

        --file)
            TEST_FILE="$1"
            shift
            ;;

        --help)
            echo "$HELP_STR"
            exit 1
            ;;

        *)
            echo "INVAID ARG: '${key}'.  Abort"
            echo "$HELP_STR"
            exit 1
            ;;

    esac
done


if [[ -z $SEARCH_WORD ]]; then
    echo "Missing --search.  Abort"
    exit 1
fi


run_test()
{
   grep $SEARCH_WORD $TEST_FILE 2>&1 >$LOG
   result=$?
   return $result
}


run_test
RC=$?
genReport "Verify string $SEARCH_WORD found in file $TEST_FILE"  $RC
