#!/bin/sh
## This script scans through the SeedsForPower.txt file (or similar files) and creates a condor scheduler
FILE=$1
RunID=$2
FilePath=~/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    Folder=$FilePath"Seed"$Seed1"_Seed"$Seed2
    #echo $Folder
    echo rm Seed$Seed1"_"Seed$Seed2/Log*.log
    echo condor_submit submitFiles/submit_Seed$Seed1"_"Seed$Seed2.txt
    echo " "  
done < $FILE

## Usage: _createManualCondorScheduler.sh Seeds_tail500.txt 'Run03' > _condorStart_2015-10-26b.sh

