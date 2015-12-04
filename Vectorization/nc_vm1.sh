#!/bin/bash
#PBS -q default
#PBS -l nodes=2:ppn=4,mem=6000m
#PBS -m abe
#PBS -j oe
#PBS -o logs/vtLog.log

cd MATLAB
matlab -nosplash -nodisplay -nodesktop -r "ct ct3"
