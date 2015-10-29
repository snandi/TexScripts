#!/bin/sh

_checkProgress_v2.sh Seeds_tail165.txt 'Run03' > Progress_165.txt 

_checkProgress_v2.sh Seeds_Middle.txt 'Run03' > Progress_Middle.txt 

_checkProgress_v2.sh Seeds_Redo.txt 'Run03' > Progress_Redo.txt 

wc -l Progress_165.txt; tail -1 Progress_165.txt 

wc -l Progress_Middle.txt; tail -1 Progress_Middle.txt 

wc -l Progress_Redo.txt; tail -1 Progress_Redo.txt 

