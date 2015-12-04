#!/bin/bash
#PBS -l nodes=1:ppn=12,mem=18000m
#PBS -m abe
#PBS -j oe
#PBS -o logs/cpu_timer.log

matlab -nosplash -nodisplay -nodesktop -r "cpuLUCompare"
