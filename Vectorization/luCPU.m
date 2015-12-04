function [cpuTime] = luCPU(B,C)

tic
D = B*C;
cpuTime = toc;
