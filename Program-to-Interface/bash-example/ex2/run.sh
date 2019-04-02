#!/usr/bin/env bash



echo "Executing ./test-checkday.sh --day Mon && ./test-search.sh --search Elxxvis --file ./data/data-1.txt"
echo ".. expect only first test to run, since it fails next command is not executed."


./test-checkday.sh --day Mon && ./test-search.sh --search Elxxvis --file ./data/data-1.txt
