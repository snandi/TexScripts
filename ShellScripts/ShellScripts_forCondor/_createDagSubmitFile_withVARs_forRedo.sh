#!/bin/bash

## This script creates the dag submit file, example dagSubmit.dag 
## Go to /z/Proj/newtongroup/snandi/Simulation_Registration/Run04/
## ../ShellScripts_forCondor/_createDagSubmitFile_withVARS_forRedo.sh SeedsForPower.txt "Run08_6-SingleIter" "submitFile_VAR_RS10-11_Run08_6-SingleIter.txt" > dagSubmit_Run08_2016-02-17.dag

FILE=$1
RunID=$2
submitFile=$3

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    RDataFile="/z/Proj/newtongroup/snandi/Simulation_Registration/$RunID/Seed$Seed1"_"Seed$Seed2/TStats_Obs_After.RData"
    #echo $RDataFile
    if [ ! -f "$RDataFile" ];
    then
	jobID=Seed$Seed1"_"Seed$Seed2
	#echo "JOB $jobID /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submitFiles_bcg/submitFile_VAR_RS10-07_$RunID.txt"
        echo "JOB $jobID /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submitFiles_bcg/$submitFile"
	echo "VARS $jobID Row=\"$LineNum\""
	echo "VARS $jobID Seed1=\"$Seed1\""
	echo "VARS $jobID Seed2=\"$Seed2\""
	echo " "
    fi
done < $FILE
