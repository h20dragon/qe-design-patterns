#!/usr/bin/env bash


TEST_TYPE="func"
LOG=/tmp/$$.log
RC=1


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
   echo ".. running search test"

   grep $SEARCH_WORD $TEST_FILE 2>&1 >$LOG

   result=$?
   if [ $result -eq 0 ]; then
       echo "Test Passed"
   else
       echo "Test Failed"
   fi
}




run_test

