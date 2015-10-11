#!/bin/bash

## This bash script submits a condor job after every 12 minutes
## /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/*

fromSeed=$1
toSeed=$2
Sleep=$3

## Usage: cd /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/
## ./_runCondorSubmit_Null.sh 101 200 120 (fromSeed, toSeed, Sleepseconds)

for Seed in `seq $fromSeed $toSeed`;
do
    echo "Starting Seed $Seed"
    condor_submit /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submit_Seed$Seed.txt
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
