#!/bin/bash
#PBS -q default
#PBS -l nodes=1:ppn=8
#PBS -m abe
#PBS -j oe
#PBS -o logs/mywave.log

matlab -nosplash -nodisplay -nodesktop
echo "job = batch('mywave')"
echo "wait(job)"
echo "load(job,'A')"
echo "plot(A)"
echo "delete(job)"
echo "clear job"
