parpool('local',12);
for n = 1:10000
	a = rand(1,n); b = rand(1,n);
	tic
	parfor t = 0:n
		c(t+1) = dot(a,b);
	end
	time(n) = toc;
end

f = figure;
plot(time,'b');

ylim([min(time),max(time)]);
title('Parfor Dot Example');
xlabel('Vector Size');
ylabel('Time (s)');
saveas(f,'dotParfor','png');
