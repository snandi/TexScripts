#!/bin/bash

## This script creates the dag submit file, example dagSubmit.dag 
## Go to /z/Proj/newtongroup/snandi/Simulation_Registration/Run04/
## ../ShellScripts_forCondor/_createDagSubmitFile_withVARS.sh SeedsForPower.txt > dagSubmit_Run04_2015-12-19.dag

FILE=$1

LineNum=0
echo "CONFIG dagman_config"
while read line; 
do
    linearray=( $line )
    LineNum=$(( $LineNum + 1 ))
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    	    jobID=Seed$Seed1"_"Seed$Seed2
	    #echo "JOB $jobID /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submitFiles_bcg/submitFile_VAR_RS10-07.txt"
	    echo "JOB $jobID /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submitFiles_bcg/submitFile_VAR_RS10-07_Run07.txt"
	    echo "VARS $jobID Row=\"$LineNum\""
	    echo "VARS $jobID Seed1=\"$Seed1\""
	    echo "VARS $jobID Seed2=\"$Seed2\""
	    echo " "
done < $FILE



