#!/bin/sh
## This script splits the alignmentchunks file into smaller files, by chr number

awk '$1 == "chr1" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr1
awk '$1 == "chr2" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr2
awk '$1 == "chr3" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr3
awk '$1 == "chr4" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr4
awk '$1 == "chr5" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr5
awk '$1 == "chr6" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr6
awk '$1 == "chr7" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr7
awk '$1 == "chr8" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr8
awk '$1 == "chr9" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr9
awk '$1 == "chr10" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr10
awk '$1 == "chr11" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr11
awk '$1 == "chr12" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr12
awk '$1 == "chr13" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr13
awk '$1 == "chr14" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr14
awk '$1 == "chr15" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr15
awk '$1 == "chr16" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr16
awk '$1 == "chr17" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr17
awk '$1 == "chr18" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr18
awk '$1 == "chr19" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr19
awk '$1 == "chr20" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr20
awk '$1 == "chr21" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr21
awk '$1 == "chr22" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr22
awk '$1 == "chrX" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chrX
awk '$1 == "chrY" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chrY

## The forloop below did not run, because of argument confusion between awk and bash
# for Chr in "chr2" "chr3"
# do
#     # echo $Chr
#     outputFilename=alignmentChunks.withLength.all7134Groups.goldOnly_$Chr
#     #echo $outputFilename
#     echo ""
# done

#awk '$1 == "chr1" {print $0}' alignmentChunks.withLength.all7134Groups.goldOnly > alignmentChunks.withLength.all7134Groups.goldOnly_chr1
