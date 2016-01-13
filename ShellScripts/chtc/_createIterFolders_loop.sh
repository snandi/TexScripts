#!/bin/bash

## This script creates Iter folders inside Seed*_Seed* folders
## Run this file inside the Run04 folder: ./_createIterFolders_loop.sh SeedsForPower.txt 'Run04' 0 999

FILE=$1
RunID=$2
fromIter=$3
toIter=$4

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    echo $Seed1 $Seed2

    folder=Seed$Seed1"_"Seed$Seed2
    mkdir /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/$folder
    cd /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/$folder
    #echo $folder
    #echo "$folder/Iter0"
    if [ ! -d "/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/$folder/Iter$fromIter" ]; then
	echo "Creating Iter folders.."
     	_createIterFolders.sh $fromIter $toIter
    fi
    if [ ! -d "/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/$folder/Iter$toIter" ]; then
	echo "Creating Iter folders.."
     	_createIterFolders.sh $fromIter $toIter
    fi
done < $FILE

