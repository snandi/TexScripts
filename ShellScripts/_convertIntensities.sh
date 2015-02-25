#!/bin/bash

## This script runs the RScript05_convertIntensities.R script to convert data from 
## text files to RData format

nohup R CMD BATCH -1 RScript05_convertIntensities_noPlot.R chr1_BB_5.Rout &
nohup R CMD BATCH -2 RScript05_convertIntensities_noPlot.R chr2_BB_5.Rout &
nohup R CMD BATCH -3 RScript05_convertIntensities_noPlot.R chr3_BB_5.Rout &
nohup R CMD BATCH -4 RScript05_convertIntensities_noPlot.R chr4_BB_5.Rout &
nohup R CMD BATCH -5 RScript05_convertIntensities_noPlot.R chr5_BB_5.Rout &
nohup R CMD BATCH -6 RScript05_convertIntensities_noPlot.R chr6_BB_5.Rout &
nohup R CMD BATCH -7 RScript05_convertIntensities_noPlot.R chr7_BB_5.Rout &
nohup R CMD BATCH -8 RScript05_convertIntensities_noPlot.R chr8_BB_5.Rout &
nohup R CMD BATCH -9 RScript05_convertIntensities_noPlot.R chr9_BB_5.Rout &
nohup R CMD BATCH -10 RScript05_convertIntensities_noPlot.R chr10_BB_5.Rout &
nohup R CMD BATCH -11 RScript05_convertIntensities_noPlot.R chr11_BB_5.Rout &
nohup R CMD BATCH -12 RScript05_convertIntensities_noPlot.R chr12_BB_5.Rout &
nohup R CMD BATCH -13 RScript05_convertIntensities_noPlot.R chr13_BB_5.Rout &
nohup R CMD BATCH -14 RScript05_convertIntensities_noPlot.R chr14_BB_5.Rout &
nohup R CMD BATCH -15 RScript05_convertIntensities_noPlot.R chr15_BB_5.Rout &
nohup R CMD BATCH -16 RScript05_convertIntensities_noPlot.R chr16_BB_5.Rout &
nohup R CMD BATCH -17 RScript05_convertIntensities_noPlot.R chr17_BB_5.Rout &
nohup R CMD BATCH -18 RScript05_convertIntensities_noPlot.R chr18_BB_5.Rout &
nohup R CMD BATCH -19 RScript05_convertIntensities_noPlot.R chr19_BB_5.Rout &
nohup R CMD BATCH -20 RScript05_convertIntensities_noPlot.R chr20_BB_5.Rout &
nohup R CMD BATCH -21 RScript05_convertIntensities_noPlot.R chr21_BB_5.Rout &
nohup R CMD BATCH -22 RScript05_convertIntensities_noPlot.R chr22_BB_5.Rout &
nohup R CMD BATCH -X RScript05_convertIntensities_noPlot.R chrX_BB_5.Rout &
nohup R CMD BATCH -Y RScript05_convertIntensities_noPlot.R chrY_BB_5.Rout &

