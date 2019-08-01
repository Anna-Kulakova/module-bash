#!/bin/bash

var=$1

if [ -n  "$var" ]; then
  echo $2 $(grep -c -E $2 $1) || echo lossser
  grep -n $2  $1 | cut -f1 -d:
  echo $3 $(grep -c -E $3 $1) || echo lossse
  grep -n $3  $1 | cut -f1 -d:
  echo $4 $(grep -c -E $4 $1) || echo losss
 grep -n $4  $1 | cut -f1 -d:
exit 0
else
    exit 1
fi



