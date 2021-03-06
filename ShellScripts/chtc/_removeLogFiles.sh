#!/bin/bash

## This script removes the condor output and log files, to create more space

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
	    rm $folder/Log*.log
	    rm $folder/Iter*/*.out
	    rm $folder/Iter*/*.err
	    rm $folder/Iter*/*.log
	    rm $folder/Iter*/CURLTIME*
	    rm $folder/Iter*/*.tar.gz

	    echo $folder
    fi

done < $FILE
