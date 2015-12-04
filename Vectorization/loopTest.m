function [time2] = loopTest(it)

tic
parfor t = 0:1:it*100
	g(t+1) = sin(t/100);
end
time2 = toc;
