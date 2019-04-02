#!/usr/bin/env bash

./test-search.sh  --search Elvis --file ../ex1/data/data-1.txt
./test-checkday.sh --day Mon
./test-search.sh  --search Waldo --file ../ex1/data/data-1.txt
./test-search.sh  --search Paul --file ../ex1/data/data-1.txt
./test-numbers.sh

