#!/bin/sh
## This script scans through the SeedsForPower.txt file and creates pairwise Seeds folders

FILE=$1
RunID=$2

FilePath=~/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    NewFolder=$FilePath"Seed"$Seed1"_Seed"$Seed2
    echo $NewFolder
    mkdir $NewFolder
done < $FILE

# for line in $(cat $FilePath)
# do

# done
