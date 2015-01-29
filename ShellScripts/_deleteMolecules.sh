#!/bin/sh
## This shell script goes through all the group numbers of Groups_mm52_redo, goes
## to the folders of those groups and deletes the molecule.txt files, to repopulate
## with correct intensity values

GroupsFile=$1
ParentFolder=$2

GroupsFilename=/aspen/nandi/mm52-all7341/Groups_Redo/$GroupsFile
for Group in $(cat $GroupsFilename)
do
	GroupFolder=/aspen/nandi/mm52-all7341/$ParentFolder/group1-$Group-inca34-outputs
	echo $Group
	cd $GroupFolder
	rm molecule*.txt
done

## Run this file as follows
## ./_deleteMolecules.sh Groups_mm52_redo maps_inca34_1pixel



