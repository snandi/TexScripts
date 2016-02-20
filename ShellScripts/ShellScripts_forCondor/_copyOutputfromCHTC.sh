#!/bin/bash

## This file copies CHTC condor outputs into the biostat folders
## Usage: cd into ShellScripts_forCondor/ 
## _copyOutputFromCHTC.sh ../Run03/SeedsForPower.txt 'Run03' 499

FILE=$1
RunID=$2
fromIter=$3
toIter=$4

FilePath=/z/Proj/newtongroup/snandi/Simulation_Registration/$RunID

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    echo $Seed1 $Seed2

    folderLocal=$FilePath/Seed$Seed1"_"Seed$Seed2
    folderRemote=/home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/$RunID/Seed$Seed1"_"Seed$Seed2
    
    #rm $folderLocal/Iter*/*.RData
    #echo "Deleted"
    scp snandi@submit-5.chtc.wisc.edu:$folderRemote/Iter*/*.RData $folderLocal/.

    for Iter in `seq $fromIter $toIter`;
      do
	mv -f $folderLocal/TStats_Permute_$Iter.RData $folderLocal/Iter$Iter/.
    done
    echo "Done"
done < $FILE

