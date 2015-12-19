#!/bin/bash

## This script removes the .RData files inside each Seed*_Seed*/Iter* folders
## _cleanSeedCrossFolders.sh ../Run03/SeedsForPower.txt 'Run03'

FILE=$1
RunID=$2
fromIter=0
toIter=999

FilePath=/z/Proj/newtongroup/snandi/Simulation_Registration/$RunID

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    echo $Seed1 $Seed2

    folderLocal=$FilePath/Seed$Seed1"_"Seed$Seed2
    rm $folderLocal/Iter*/*.RData

done < $FILE

