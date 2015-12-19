#!/bin/bash

## This file creates a condor submit file for each Seed combination in the file SeedsForPower.txt  
## Save these in /z/Proj/newtongroup/snandi/Simulation_Registration/RScripts_forCondor/SubmitFiles/chtc_submitFiles/

createSubmit() ## Function to create a submit file for each seed
{
S1=$1
S2=$2

echo "# submitFile_Seed$S1"_"Seed$S2.txt"
echo "#"
echo "# Specify the HTCondor Universe (vanilla is the default and is used"
echo "#  for almost all jobs), the desired name of the HTCondor log file,"
echo "#  and the desired name of the standard error file.  "
echo "#  Wherever you see \$(Cluster), HTCondor will insert the queue number"
echo "#  assigned to this set of jobs at the time of submission."
echo "universe                  = vanilla"
echo "log                       = /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/Seed$S1_Seed$S2/LogSeed$S1_Seed$S2.log"
echo "error                     = /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/Seed$S1_Seed$S2/Iter\$(Process)/Seed$S1_Seed$S2_Iter\$(Process).err"
echo " "
echo "# Specify your executable (single binary or a script that runs several"
echo "#  commands), arguments, and a files for HTCondor to store standard"
echo '#  output (or "screen output").'
echo "#  \$(Process) will be a integer number for each job, starting with 0"
echo "#  and increasing for the relevant number of jobs."
echo "executable                = /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/chtcjobwrapper"
echo 'arguments                 = "--type=R --version=sl6-R-3.1.0 --cmdtorun=RScript10-08_chtc.R --unique=\$(Process) -- ProcessID=\$(Process) Seed1=$S1 Seed2=$S2"'
echo "output                    = /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/Seed$S1_Seed$S2/Iter\$(Process)/TStats_Permute_\$(Process)"
echo "initialdir                = /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/Seed$S1_Seed$S2/Iter\$(Process)"
echo " "
echo "#  Specify that HTCondor should transfer files to and from the"
echo "#  computer where each job runs. The last of these lines *would* be"
echo "#  used if there were any other files needed for the executable to run."
echo " "
echo "should_transfer_files     = YES"
echo "when_to_transfer_output   = ON_EXIT"
echo " "
echo "transfer_input_files      = /home/snandi/ChtcRun/Project_CurveReg/Simulation_Registration/Run03/shared/"
echo "#"
echo "# Tell HTCondor what amount of compute resources"
echo "#  each job will need on the computer where it runs."
echo " "
echo "request_cpus              = 1"
echo "request_memory            = 1GB"
echo "request_disk              = 1GB"
echo " "
echo "+WantFlocking             = true"
echo "+WantGlideIn              = true"
echo " "
echo "## To release jobs that are on hold for more than 10 minutes (600 secs)"
echo "periodic_release = ( JobStatus == 5 ) && ( ( CurrentTime - EnteredCurrentStatus) > 600 ) && ( JobRunCount < 3 ) && ( HoldReasonCode != 1 ) && ( HoldReasonCode != 6 ) && (HoldReasonCode != 14 ) && ( HoldReasonCode != 22 )"
echo " "
echo "# Tell HTCondor to run 10 instances of our job:"
echo "queue 1000"
}

createSubmit "28" "29"