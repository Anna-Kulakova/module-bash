#!/bin/bash

if [ "$#" -eq 2 ]; then
find $2 | while read f
do
    echo $f | cut -d '/' -f2
    grep -n $1 $f | cut -d ':' -f 1
done
exit 0
else
    exit 1
fi

