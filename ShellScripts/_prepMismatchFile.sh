#!/bin/bash

## This script extract chr number from the first column and adds it as second column 
## Input: a csv file like cFscan_iFscan_mismatch.csv
## Output: a loc file for running multiple loc track intersections

FILE=$1
IFS=,

lineNum=0
while read line;
do
    lineNum=$(( $lineNum + 1 ))
    if [ "$lineNum" -gt "1" ]
    then
	linearray=( $line )
	chrStr=${linearray[0]}
	chrNum=${chrStr/chr/} 

	echo "$chrStr,$chrNum,${linearray[2]},${linearray[3]},${linearray[4]}"
	#echo "$chrStr, $chrNum"
    fi
done < $FILE

