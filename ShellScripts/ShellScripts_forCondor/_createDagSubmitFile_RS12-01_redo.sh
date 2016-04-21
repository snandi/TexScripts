#!/bin/bash

## This script creates the dag submit file, for those fragments that failed in earlier runs

## Go to /z/Proj/newtongroup/snandi/Project_RScripts/SubmitFiles/
## The input files are in /z/Proj/newtongroup/snandi/mm52-all7341/alignmentChunks/
## _createDagSubmitFile_RS12-01_redo.sh /z/Proj/newtongroup/snandi/mm52-all7341/alignmentChunks/chr22_Length30_Depth10.txt > dagSubmit_chr22.dag

FILE=$1

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    if [ "$LineNum" -gt "1" ]
    then
	Chr=${linearray[0]}
	ChrNum=${linearray[7]}
	FragIndex=${linearray[1]}
        DataFile="/z/Proj/newtongroup/snandi/mm52-all7341/intensities_inca34_1pixel/chr$ChrNum"_"frag$FragIndex"_"intensities_smooth.RData"
	if [ ! -f "$DataFile" ];
	then
	    jobID=$Chr"_"frag$FragIndex
	    echo "JOB $jobID /z/Proj/newtongroup/snandi/Project_CurveReg/SubmitFiles/submitFile_CurveReg_RS12-01.txt"
    	    echo "VARS $jobID ChrNum=\"$ChrNum\""
	    echo "VARS $jobID FragIndex=\"$FragIndex\""
    	    echo " "
        fi
    fi
done < $FILE



