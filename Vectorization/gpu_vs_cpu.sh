#!/bin/bash
#PBS -q gpu
#PBS -m abe
#PBS -l nodes=1:ppn=4,gpus=1,mem=15000m
#PBS -j oe
#PBS -o logs/gpu_vs_cpu2.log

matlab -nosplash -nodisplay -nodesktop -r "gpuLUCompare"

