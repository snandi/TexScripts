#!/bin/bash

#################
## Generate the intensity extraction shell scripts, for the chromosome number passed as an argument
#################

##### Usage #####
## ./_generageExtractionCommandFile.sh 3 > _extractIntensities_chr3.sh ## For chr 3
#################

#################
chr=$1
fname="/home/nandi/Project_GC_Content/RData/chr${chr}_fragIndexList_Min10.txt"
exec<$fname
while read line
do
    frag=$line
    fname_alchunk=/aspen/nandi/mm52-all7341/alignmentChunks/alignmentChunks.withLength.all7134Groups.goldOnly_chr$chr
    fname_pixels=/aspen/nandi/mm52-all7341/pixelIntensities/pixelIntensities_5pixel_chr$chr
    #echo $line
    fileName=chr${chr}_frag${frag}_intensities
    echo "~/bin/intensityForAlignedFrags.pl -ch $chr -f $frag -a $fname_alchunk -nM $fname_pixels > $fileName"
done
#################


