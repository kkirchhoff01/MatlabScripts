#!/bin/bash
#PBS -l nodes=1:ppn=6,mem=18000m
#PBS -j oe
#PBS -o logs/dot_timer.log

matlab -nosplash -nodisplay -nodesktop -r "dotTime"

