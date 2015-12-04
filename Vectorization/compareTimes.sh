#!/bin/bash
#PBS -N CompareTimes
#PBS -q gpu
#PBS -l nodes=1:ppn=4:gpus=1
#PBS -m abe
#PBS -j oe
#PBS -o logs/combined.log

matlab -nosplash -nodisplay -nojvm -nodesktop -r "naxNumCompThreads(16); MATLAB/compareTimes"
