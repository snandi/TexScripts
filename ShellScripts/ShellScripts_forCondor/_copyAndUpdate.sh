#!/bin/bash

## This script just calls other shell scripts and R scripts and updates post-registration 
## p-values

## Step 1: Copy from chtc
./_copyOutputfromCHTC.sh ../Run03/SeedsForPower_NotDone.txt 'Run03' 
rm -f ../Run03/Seed801_Seed828/Iter867/*.RData
rm -f ../Run03/Seed459_Seed530/Iter755/*.RData

## Step 2: Estimate p-values
cd ~/Project_CurveReg/RScripts_CurveReg/
R CMD BATCH --no-save RScript10-09_getPValue_After_IteratedReg.R

## Step 3: Compare p-values
R CMD BATCH --no-save RScript10-10_compare_pValues_BetweenSeeds.R



