#!/bin/bash

## This bash script submits a condor job after every 12 minutes
## /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/*

fromSeed=$1
toSeed=$2
Sleep=$3
RunID=$4

## Usage: cd /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/
## ./_runCondorSubmit_Null.sh 1 20 120 "Run04" (fromSeed, toSeed, Sleepseconds, RunID (Run04 or higher))

for Seed in `seq $fromSeed $toSeed`;
do
    echo "Starting Seed $Seed"
    condor_submit /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submitFiles_bcg/$RunID/submit_Seed$Seed.txt
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
    condor_release snandi
    sleep $Sleep
done

for i in `seq 1 50`;
do
    condor_release snandi
    sleep $Sleep
done

