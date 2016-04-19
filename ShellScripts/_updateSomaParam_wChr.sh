#!/bin/sh
## This script updates the Reference mapset file and the Genspect file names for each chromosome, from 1:22, when
## aligning a map to the human references, one chromosome at a time

Chr=$1
nRepeat=$2

echo "## This SOMA parameter file is to align the synthetic ribosomal dna map to human reference,"

echo "Reference Mapset File		= /omm/data/sequence/human_wchr-b37/chr"$Chr"_500_NtBspQI.maps"
echo "Optical Mapset File		= rDNA_"$nRepeat".maps     # input mapset"
echo "Reference Mapset Range     	= 1-*       # which maps to use from mapset"
echo "Optical Mapset Range       	= 1-*       # which maps to use from mapset"
echo "Genspect File       		= rDNA_alignmentOutput_"$nRepeat"_wchr"$Chr".xml        # output file name"
echo "Log File                    	= NONE"
echo "Allow Danglers              	= false"
echo "Verbose                    	= false"
echo "Alignment Type             	= global"
echo "Number Alignments          	= 1"
echo "Minimum Score              	= 0"
echo "Cutoff Function 		= 5.981522 - 0.4118 *COUNT 	#NFRAGS regression,0.995 level"
echo "Minimum Aligned Chunks     	= 5"
echo "#Minimum Flanking Chunks  	= 3"
echo "#Maximum Number Gaps      	= 10"
echo "P-Value Cutoff Probability 	= 0.000000"
echo "P-Value Lambda             	= 2.750000"
echo "P-Value K                  	= 0.001600"
echo "P-Value Parameter File     	= NONE"
echo "Enzyme Cut Rate            	= 0.111482720178372"
echo "Small Fragment Size Error  	= 0.300000"
echo "Small Fragment Size        	= 5.000000"
echo "Medium Fragment Size Error 	= 0.250000"
echo "Medium Fragment Size       	= 10.000000"
echo "Large Fragment Size Error  	= 0.200000"
echo "Missing Cut Penalty        	= 0.750000"
echo "False Cut Penalty          	= 1.500000"
echo "Small Fragment Median      	= 1.350000"
echo "Maximum Missing Cuts       	= 4"
echo "Maximum False Cuts         	= 2"
echo "#Gap Maximum Distance     	= 200.000000"
echo "#Gap Open Penalty     		= 1.500000"
echo "#Gap Extend Penalty     	= 0.010000"

## Usage: ./_updateSomaParam_wChr.sh 22 "X5" > soma.param_RiboDNA_human-b37

