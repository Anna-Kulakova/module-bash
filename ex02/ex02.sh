#!/bin/bash


str=$( echo $1 | tr " " "\n" )
for i in $str
do
 ls -R | grep -F  $i || echo the searched PATH is unexisting

done
