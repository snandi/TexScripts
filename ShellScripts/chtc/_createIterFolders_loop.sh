#!/bin/bash

## This script creates Iter folders inside Seed*_Seed* folders

FILE=$1

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    echo $Seed1 $Seed2

    folder=Seed$Seed1"_"Seed$Seed2
    mkdir /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/$folder
    cd /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/$folder
    #echo $folder
    #echo "$folder/Iter0"
    if [ ! -d "/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/$folder/Iter0" ]; then
	echo "Creating Iter folders.."
     	_createIterFolders.sh 0 999
    fi
    if [ ! -d "/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/$folder/Iter999" ]; then
	echo "Creating Iter folders.."
     	_createIterFolders.sh 0 999
    fi
done < $FILE

