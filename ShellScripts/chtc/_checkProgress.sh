#!/bin/sh
## This script scans through the SeedsForPower.txt file and checks the progress of simulations
FILE=$1
RunID=$2
FilePath=~/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    Folder=$FilePath"Seed"$Seed1"_Seed"$Seed2
    echo $Folder
    ls -lh $Folder/*.log
    ls -lh $Folder/Iter*/*.RData | wc -l 
done < $FILE

## Usage: _checkProgress.sh SeedsForPower.txt 'Run03' > Progress1.txt

