#!/bin/bash

## This file splits the Groups_mm52 file into smaller files of 100 groups each
## This script runs in the folder /aspen/nandi/mm52_all7341/Groups_Redo/

InputFile=$1
LINE_Start=1
NumGroupsPerFile=100
for i in `seq 0 7`;
do 
    let LINE_Start=$i*NumGroupsPerFile+1
    let LINE_End=$LINE_Start+NumGroupsPerFile-1
    #echo $LINE_Start
    #echo $LINE_End
    OutputFilename="Groups_mm52_redo"$LINE_Start"To"$LINE_End
    #echo $Filename
    echo sed -n \"$LINE_Start\,$LINE_End p\" $InputFile \> $OutputFilename
done

## Usage: ./_createSplitGroup.sh Groups_mm52_redo > _splitGroups.sh

