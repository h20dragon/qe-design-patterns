#!/usr/bin/env bash


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
   echo "Executing day test .."

   date | grep $QDAY 2>&1 >$LOG
   result=$?
   return $result
}


run_test

RC=$?

if [ $RC -eq 0 ]; then
    echo "Passed"
else
    echo "Failed"
fi


