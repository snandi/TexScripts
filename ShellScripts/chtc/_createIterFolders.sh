#!/bin/bash

## This file creates Iter* folders inside each Seed* folder in 
## /z/Proj/newtongroup/snandi/Simulation_Registration/Run*

# RunID=$1
# fromSeed=$2
# toSeed=$3
fromIter=$1
toIter=$2

# for Seed in `seq $fromSeed $toSeed`;
# do 
#   echo $Seed
#   cd /z/Proj/newtongroup/snandi/Simulation_Registration/$RunID/Seed$Seed
  for Iter in `seq $fromIter $toIter`;
    do 
      mkdir Iter$Iter
    done
#V done

## Usage: cd into the folder you want to create the Iter folders. cd /z/Proj/newtongroup/snandi/Simulation_Registration/Run03/Seed28_Seed29/
## ./_createIterFolders.sh 0 10

