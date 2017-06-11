#!/bin/bash

Chr=$1
nRandomSeeds=$2
maxNmers=$3
segment=$4
bpLocStart=$5
bpLocEnd=$6
segmentLengthPx=$7

# download my R tarball
wget -q http://proxy.chtc.wisc.edu/SQUID/snandi/R-3.2.5_SN_GW.tar.gz

# untar my R tarball
tar -xzf R-3.2.5_SN_GW.tar.gz ## Removing -v from xvzf makes it less verbose
rm -f R-3.2.5_SN_GW.tar.gz

# make sure the script will use my R installation
export PATH=$(pwd)/R/bin:$PATH

# download some standard Libs (recommended by Christina)
wget -q http://proxy.chtc.wisc.edu/SQUID/SLIBS.tar.gz
tar -xzf SLIBS.tar.gz
rm -f SLIBS.tar.gz
export LD_LIBRARY_PATH=$(pwd)/SS:$LD_LIBRARY_PATH

echo "Starting R CMD BATCH chr $1 segment $4 "

filenameRout='chr'$Chr'_'$segment'.Rout'
# Run the R script in the shared folder
#R CMD BATCH '--args Seed1="$Seed1" Seed2="$Seed2" Iter="$Iter"' RScript11-08_Register_permute_Iterated_chtc.R
R CMD BATCH '--args CHROMOSOME_INT='$Chr' nRandomSeeds='$nRandomSeeds' MAX_NMERS='$maxNmers' Segment='$segment' bpLocStart='$bpLocStart' bpLocEnd='$bpLocEnd' SEGMENT_LENGTH_PX='$segmentLengthPx' ' Predict_GenomeWide_Comprehensive_chtc.R $filenameRout

# To save the exit code from the R execution
exit_code=$?

# Remove the files and folder untarred
rm -rf SS
rm -rf R

exit $exit_code
