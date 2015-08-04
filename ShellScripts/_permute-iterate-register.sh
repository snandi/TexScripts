#!/bin/bash

## This script runs R BATCH commands to run the permutation tests for establishing if 
## iterated registration is doing what it is supposed to do.

## For comparing between Frag33, pixels 6 and 45 with Frag33 pixels 46 and 85
#R CMD BATCH '--args FragIndex_1=33 Regist_PixelFrom_1=6 Regist_PixelTo_1=45 FragIndex_2=33 Regist_PixelFrom_2=46 Regist_PixelTo_2=85 NPermute=100 NCores=20 PairwiseSimilarityThreshold=0.80' RScript09-04_Mflorum_Permute_Regist.R Temp/Permute_Regist_F33P6-45_F33P46-85.Rout &

## For comparing between Frag30, pixels 6 and 45 with Frag30 pixels 46 and 85
R CMD BATCH '--args FragIndex_1=30 Regist_PixelFrom_1=6 Regist_PixelTo_1=45 FragIndex_2=30 Regist_PixelFrom_2=46 Regist_PixelTo_2=85 NPermute=500 NCores=20 PairwiseSimilarityThreshold=0.75' RScript09-04_Mflorum_Permute_Regist.R Temp/Permute_Regist_F30P6-45_F30P46-85.Rout & #nebula-8

## For comparing between Frag30, pixels 46 and 85 with Frag30 pixels 86 and 125
R CMD BATCH '--args FragIndex_1=30 Regist_PixelFrom_1=46 Regist_PixelTo_1=85 FragIndex_2=30 Regist_PixelFrom_2=86 Regist_PixelTo_2=125 NPermute=500 NCores=20 PairwiseSimilarityThreshold=0.75' RScript09-04_Mflorum_Permute_Regist.R Temp/Permute_Regist_F30P46-85_F30P86-125.Rout & #nebula-3

## For comparing between Frag33, pixels 6 and 45 with Frag33 pixels 46 and 85
R CMD BATCH '--args FragIndex_1=33 Regist_PixelFrom_1=6 Regist_PixelTo_1=45 FragIndex_2=33 Regist_PixelFrom_2=46 Regist_PixelTo_2=85 NPermute=500 NCores=20 PairwiseSimilarityThreshold=0.75' RScript09-04_Mflorum_Permute_Regist.R Temp/Permute_Regist_F33P6-45_F33P46-85.Rout & #nebula-9
