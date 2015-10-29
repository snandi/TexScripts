#!/bin/sh
## This script scans through the SeedsForPower.txt file and checks the progress of simulations
FILE=$1
RunID=$2
FilePath=/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/

Count=0
TotalComplete=0
Lines=0
while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    Folder=$FilePath"Seed"$Seed1"_Seed"$Seed2
    #echo $Folder
    #ls -lh $Folder/*.log
    if [ -f "$Folder/Iter0/TStats_Permute_0.RData" ];
	then
	NumComplete=$( ls -lh $Folder/Iter*/*.RData | wc -l )
	if [[ $NumComplete -gt 949 ]]; then
	    Count=$((Count+1)) 
	fi
    else
	NumComplete=0
    fi
    TotalComplete=$((TotalComplete+$NumComplete))
    Lines=$((Lines+1))
    echo "$Seed1  $Seed2  $NumComplete"
done < $FILE
TheoComplete=$((10*Lines))
PctComplete=$((TotalComplete/TheoComplete))

echo $Count $TotalComplete $PctComplete 'percent'
## /usr/bin/printf '%.*f\n' 2 $PctComplete

## Usage: _checkProgress.sh SeedsForPower.txt 'Run03' > Progress1.txt

