#!/usr/bin/bash env



genReport()
{
    local description="$1"
    local return_code="$2"

    local result="Fail"

    if [[ $return_code -eq 0 ]]; then
       result="Pass"
    fi

    echo "$description : $result"
}




