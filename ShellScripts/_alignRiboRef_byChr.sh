#!/bin/sh
## This script loops through the chromosomes and aligns the ribosomal synthetic reference to human reference
## by chromosome, with the parameter file created by _updateSomaParam_wChr.sh

nRepeat=$1

for Chr in `seq 1 22`;
do 
echo "Aligining with Chr $Chr"
./_updateSomaParam_wChr.sh $Chr $nRepeat > soma.param_RiboDNA_human-b37
soma_align.LINUX soma.param_RiboDNA_human-b37

FileIn="rDNA_alignmentOutput_"$nRepeat"_wchr"$Chr".xml"
Filetxt="rDNA_alignmentOutput_"$nRepeat"_wchr"$Chr".txt"
Filemaps="rDNA_alignmentOutput_"$nRepeat"_wchr"$Chr".maps"

parseXML.pl $FileIn > $Filetxt

GetAlignedMaps.sh $FileIn > $Filemaps
done


## Usage: nohup ./_alignRiboRef_byChr.sh "X2" &

