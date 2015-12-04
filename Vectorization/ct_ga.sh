#!/bin/bash
#PBS -q gpu
#PBS -l nodes=1:ppn=4,mem=12000m
#PBS -m abe
#PBS -j oe
#PBS -o logs/ga.log

cd MATLAB
matlab -nosplash -nodisplay -nodesktop -r "ga"

