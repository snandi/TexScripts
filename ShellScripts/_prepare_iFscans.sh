#!/bin/bash

## This script converts segment iFscans one bigwig file per chromosome, to be displayed on UCSC genome browser.
## Usage: _prepare_iFscans.sh "chr21" 

chr=$1
fileNameWig=$chr"_iFscan.wig"
fileNameBigWig=$chr"_iFscan.bw"

cat ../$chr/$chr*_predictedFscan.txt > temp1				## 1. Concatenate all segments into one file
sed '/variableStep/d' temp1 > temp2					## 2. Remove all lines that start with variableStep
sort -k1n temp2 > $fileNameWig						## 3. Sort the files by first column (k1)
rm -f temp*								## 4. Remove the temp files created
sed -i "1ivariableStep chrom=$chr span=206" $fileNameWig		## 5. Add a row of headers
./wigToBigWig.txt $fileNameWig hg19.chrom.sizes $fileNameBigWig		## 6. Convert from wig to bigwig

