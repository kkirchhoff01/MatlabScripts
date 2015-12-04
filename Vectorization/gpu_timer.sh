#!/bin/bash
#PBS -q gpu
#PBS -l nodes=1:ppn=1:gpus=1
#PBS -j oe
#PBS -o logs/gpu_timer.log

matlab -nosplash -nodisplay -nodesktop -r "dotTime"
