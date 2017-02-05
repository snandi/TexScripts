#!/bin/bash

## This script creates the dag submit file, for all intervals and subIntervals of
## MM52 pairwise consensus comparison

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## The input file is in /ua/snandi/newtongroup/mm52-all7341/pairwiseComparison/chr22/Pixels50Flank10Sliding200GAP-10/AlignmentScore/  
## _createDagSubmitFile_MM05.sh /ua/snandi/newtongroup/mm52-all7341/pairwiseComparison/chr22/Pixels50Flank10Sliding200GAP-10/AlignmentScore/PairwiseAlignmentScores.txt 50 10 22 > dagSubmit_MM05_chr22.dag

FILE=$1
Pixels=$2
FlankPixels=$3
ChrNum=$4

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

	jobID=mm"_"$Int1"_"$SubInt1"-"mm"_"$Int2"_"$SubInt2
	echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_MM05_CompareConsensus.txt"
	echo "VARS $jobID Pixels=\"$Pixels\""
	echo "VARS $jobID FlankPixels=\"$FlankPixels\""
	echo "VARS $jobID Interval1=\"$Int1\""
	echo "VARS $jobID Interval2=\"$Int2\""
	echo "VARS $jobID subInterval1=\"$SubInt1\""
	echo "VARS $jobID subInterval2=\"$SubInt2\""
	echo "VARS $jobID ChrNum=\"$ChrNum\""
	echo " "
    fi
done < $FILE



