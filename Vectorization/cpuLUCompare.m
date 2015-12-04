parpool('local',3);

parfor i = 1:800
	t1(i) = luCPU(randn(i),randn(i));
end
t1(800)
f = figure;
plot(t1,'r');

ylim([0,t1(800)]);
title('CPU Matrix Multiplication Time');
xlabel('Size of NxN Matrix');
ylabel('Time (s)');
saveas(f,'cpuMultCompare5k14core','png');
delete(gcp);
