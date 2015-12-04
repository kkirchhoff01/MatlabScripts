#!/bin/bash
#PBS -l nodes=1:ppn=12,mem=18000m
#PBS -j oe
#PBS -o logs/parfor_timer.log

matlab -nosplash -nodisplay -nodesktop -r "ppoolEx"
