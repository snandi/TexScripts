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
    cd $folder
    _createIterFolders.sh 0 999
done < $FILE
