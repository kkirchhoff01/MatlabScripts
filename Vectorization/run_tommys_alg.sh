#!/bin/bash
#PBS -q default
#PBS -l nodes=1:ppn=12,mem=12000m
#PBS -j oe
#PBS -o logs/tommy_timer.log

matlab -nosplash -nodisplay -nodesktop -r "tomsA"

