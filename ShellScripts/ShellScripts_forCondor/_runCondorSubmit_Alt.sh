#!/bin/bash

## This bash script submits a condor job after every 12 minutes
## /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/*

## Usage: cd /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/
## ./_runCondorSubmit_Alt.sh ../Run03/SeedsForPower.txt

FILE=$1
Sleep=120

while read line; 
do
    linearray=( $line )
    Seed1=${linearray[0]}
    Seed2=${linearray[1]}
    echo $Seed1 $Seed2

    condor_submit /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submit_Seed$Seed1"_"Seed$Seed2.txt
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
done < $FILE
