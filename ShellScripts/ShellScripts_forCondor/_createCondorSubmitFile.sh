#!/bin/bash

## This file creates a condor submit file for each Seed in 
## /z/Proj/newtongroup/snandi/Simulation_Registration/Run*

## Seed=4
fromSeed=$1
toSeed=$2

create_submit () ## Function to create a submit file for each seed
{
Seed=$1
echo "Universe = vanilla"
echo "Executable = /s/bin/R"
echo "initialdir = /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/"
echo "log =  /z/Proj/newtongroup/snandi/Simulation_Registration/Run01/Seed$Seed/CondorLog_2015-10-10.log"
echo " "
echo "request_cpus    =       1"
echo "request_memory  =       500MB"
echo "request_disk    =       1GB"
echo "arguments       =       --no-save --args ProcessID=\$(Process) Seed=$Seed"
echo "input           =       RScript10-02_permute_iterate_register.R"
echo "output          =       /z/Proj/newtongroup/snandi/Simulation_Registration/Run01/Seed$Seed/Iter\$(Process)/TStats_Permute_\$(Process)"
echo "error           =       /z/Proj/newtongroup/snandi/Simulation_Registration/Run01/Seed$Seed/Iter\$(Process)/err_\$(Process)"
echo " "

echo "periodic_release = ( JobStatus == 5 ) && ( ( CurrentTime - EnteredCurrentStatus) > 600 ) && ( JobRunCount < 3 ) && ( HoldReasonCode != 1 ) && ( HoldReasonCode != 6 ) && (HoldReasonCode != 14 ) && ( HoldReasonCode != 22 )"
echo " "

echo "queue 1000"
}

for Seed in `seq $fromSeed $toSeed`;
do
  filename=/z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/submit_Seed$Seed.txt
  create_submit $Seed > $filename
done

## Usage: cd /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/
## ./_createCondorSubmitFile.sh 10 15

