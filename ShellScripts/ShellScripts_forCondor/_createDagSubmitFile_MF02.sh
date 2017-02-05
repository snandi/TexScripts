#!/bin/bash

## This script creates the dag submit file, for all intervals and subIntervals of
## Mflorum pairwise sequence comparison

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## The input file is in /z/Proj/newtongroup/MF_cap348/pairwiseComparison/Pixels40Flank10Sliding200/AlignmentScore
## _createDagSubmitFile_MF02.sh /z/Proj/newtongroup/MF_cap348/pairwiseComparison/Pixels40Flank10Sliding200GAP-20/AlignmentScore  > dagSubmit_MF02.dag 40 10 200 -20

FILE=$1
Pixels=$2
FlankPixels=$3
SlidingWindow=$4
GAP=$5

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    if [ "$LineNum" -gt "1" ]
    then
	Int1=${linearray[2]}
	SubInt1=${linearray[3]}

	Int2=${linearray[4]}
	SubInt2=${linearray[5]}

	jobID=mf"_"$Int1"_"$SubInt1"-"mf"_"$Int2"_"$SubInt2
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_MF02_CompareSequences.txt"
	echo "VARS $jobID Pixels=\"$Pixels\""
	echo "VARS $jobID FlankPixels=\"$FlankPixels\""
	echo "VARS $jobID SlidingWindow=\"$SlidingWindow\""
	echo "VARS $jobID Interval1=\"$Int1\""
	echo "VARS $jobID Interval2=\"$Int2\""
	echo "VARS $jobID subInterval1=\"$SubInt1\""
	echo "VARS $jobID subInterval2=\"$SubInt2\""
	echo "VARS $jobID GAP=\"$GAP\""
	echo " "
    fi
done < $FILE



