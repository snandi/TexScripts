#!/bin/bash

## This script creates the dag submit file, for all intervals and subIntervals of
## Mflorum pairwise sequence comparison

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## The input file is in /z/Proj/newtongroup/snandi/mm52-all7341/pairwiseComparison/mmSubint_chr20Pixels50Flank10Coverage15.txt
## _createDagSubmitFile_MM04.sh /z/Proj/newtongroup/snandi/mm52-all7341/pairwiseComparison/mmSubint_chr20Pixels50Flank10Coverage15.txt 50 10 15 20 > dagSubmit_MM04_chr20pixels50.dag 

FILE=$1
Pixels=$2
FlankPixels=$3
Coverage=$4
Chr=$5

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    if [ "$LineNum" -gt "1" ]
    then
	Interval=${linearray[0]}
	SubInterval=${linearray[2]}

	jobID=mf"_"$Interval"_"$SubInterval
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_MM04_SubIntRegistration.txt"
	echo "VARS $jobID Pixels=\"$Pixels\""
	echo "VARS $jobID FlankPixels=\"$FlankPixels\""
	echo "VARS $jobID Chr=\"$Chr\""
	echo "VARS $jobID Interval=\"$Interval\""
	echo "VARS $jobID SubInterval=\"$SubInterval\""
	echo "VARS $jobID Coverage=\"$Coverage\""
	echo " "
    fi
done < $FILE



