#!/bin/sh
## This file takes input a file with Group numbers, in the same folder as the group folders.
## This script will run in the folder /home/nandi/PythonProgramming/

Filename=$1
FolderPath=/aspen/nandi/mm52-all7341/maps_inca34_3pixel/$Filename
# for line in $(cat /aspen/nandi/mm52-all7341/Groups_mm52) THIS WAS THE ORIGINAL LINE.
for line in $(cat $FolderPath) 
do 
    /home/nandi/anaconda/bin/python  P05_convertTo_3_pixel.py "$line" 
done


########################################################
## Usage
## ./_loopthroughGroups_mm52_1px.sh Groups_mm52_2393795
########################################################
