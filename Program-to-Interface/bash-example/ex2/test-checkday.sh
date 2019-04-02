#!/usr/bin/env bash


source ./utils.sh


TEST_TYPE="func"
LOG=/tmp/$$.log
RC=1


QDAY=""

HELP_STR="

test-checkday.sh --day <Mon|Tues|...>

"

while [[ $# -gt 0 ]]; do
    key="$1"
    shift

    case $key in

        --day)
            QDAY="$1"
            shift
            ;;

        --help)
            echo "$HELP_STR"
            exit 1
            ;;

        *)
            echo "$HELP_STR"
            exit 1
            ;;

    esac
done




run_test()
{
   date >$LOG

   grep $QDAY $LOG 2>&1 >$LOG
   result=$?
   return $result
}


run_test
RC=$?

genReport "Verify day is $QDAY."  "$RC"

exit $RC

