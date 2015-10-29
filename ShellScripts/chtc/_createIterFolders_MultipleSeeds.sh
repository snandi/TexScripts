#!/bin/bash

## This file creates Iter* folders inside each Seed* folder in 
## /z/Proj/newtongroup/snandi/Simulation_Registration/Run*

RunID=$1
fromSeed=$2
toSeed=$3
fromIter=$4
toIter=$5

for Seed in `seq $fromSeed $toSeed`;
do 
  echo $Seed
  cd /z/Proj/newtongroup/snandi/Simulation_Registration/$RunID/Seed$Seed
  for Iter in `seq $fromIter $toIter`;
    do 
      mkdir Iter$Iter
    done
done

## Usage: cd /z/Proj/newtongroup/snandi/Simulation_Registration/ShellScripts_forCondor/
## ./_createIterFolders.sh Run01 1 2 0 10

