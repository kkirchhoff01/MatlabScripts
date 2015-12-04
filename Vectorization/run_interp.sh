#!/bin/bash
#PBS -l nodes=1:ppn=4,mem=250000m
#PBS -m abe
#PBS -j oe
#PBS -o logs/run_interp.log

matlab -nosplash -nodisplay -nodesktop -r "interp"


