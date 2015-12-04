function [gpuTime] = luGPU(A,B)

tic
Gc = A*B;
gpuTime = toc
