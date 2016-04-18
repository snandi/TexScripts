#!/bin/sh
## This script parses alignmentoutput.xml to alignmentoutput.txt, using Steve's xml parser

## Change merge1 to merge2 or remove it, if necessary

for Chr in `seq 1 22`;
do 
    FileIn="mm52-post-rDNA_alignmentOutput_X20_merge1_wchr$Chr.xml"
    FileOut="mm52-post-rDNA_alignmentOutput_X20_merge1_wchr$Chr.txt"
    parseXML.pl $FileIn > $FileOut
#    echo $FileIn
#    echo $FileOut
done

## usage ./_parsexml.sh 

