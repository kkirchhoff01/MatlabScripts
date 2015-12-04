#!/bin/bash
#PBS -q gpu
#PBS -l nodes=2:ppn=4:gpus=1
#PBS -m abe
#PBS -j oe
#PBS -o logs/combined2.log

cd MATLAB
matlab -nosplash -nodisplay -nodesktop -r "compareTimes"
