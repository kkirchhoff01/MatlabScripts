function [time1] = vectorizeTest(itt)

tic
t = 0:.01:itt;
y = sin(t);
time1 = toc
