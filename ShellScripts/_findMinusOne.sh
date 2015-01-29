#!/bin/sh
## This shell script goes through all the group numbers of mm52_all7341 experiment
## and each molecule.txt file in prabu's folder on /aspen/ and checks if there is
## a -1 in the third column. That would indicate the molecule was too close to one
## of the edges of the frame. Then, we would need to redo the conversion from 5 to
## 1 or 3 pixels around the backbone

GroupsFilename='/aspen/nandi/mm52-all7341/Groups_Redo/Groups_mm52'
for Group in $(cat $GroupsFilename)
do
	PrabuFolder=/aspen/prabu/mm52-all7341/maps-inca34/group1-$Group-inca34-outputs
	#echo $PrabuFolder
	cd $PrabuFolder
	NumLines=$(awk '{print $3}' molecule*.txt | awk '/-1/' | wc -l)
	echo $Group " " $NumLines
done
#awk '{print $3}' molecule*.txt | awk '/-1/'

## Run this file as follows
## ./_findMinusOne.sh > MinusOne.Output

## Then run the following command: (to print only the group numbers that have nonzero second column
## awk '$2 !="0" {print $0}' MinusOne.Output > Groups_mm52_redo


