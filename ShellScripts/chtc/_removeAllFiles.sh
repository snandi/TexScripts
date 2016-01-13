#!/bin/bash

## This script removes all condor outputs for re-running the whole simulation

FILE=$1
RunID=$2

i=1
while read line; 
do
    i=$((i + 1))
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}

    folder=/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/Seed$Seed1"_"Seed$Seed2
    
    if (( $i < 1253 )) 
	then
	    rm $folder/Iter*/*
	    rm -rf $folder/*

	    echo $folder
    fi

done < $FILE
