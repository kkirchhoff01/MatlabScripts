function ct(name)

for p = 0:5000
	tc(p+1) = vectorizeTest(p);
	tv(p+1) = loopTest(p);
end

f = figure;
hold on;
q = max(tv)
r = min(tv)
ylim([r,1]);
plot(tc,'r');
plot(tv,'b');
saveas(f,name,'png');
