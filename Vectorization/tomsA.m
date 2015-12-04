for n = 10:10:10000
	A = spdiags(rand(n,3),-1:1,n,n);
	b = rand(n,1);
	time((n/10)) = tomAlgorithm(A,b,n);
	time2((n/10)) = tomAlgorithm2(A,b,n);
end

time2(100)

f = figure;
hold on;

plot(time);
plot(time2,'r');

ylim([0,time2(100)]);
title('Toms Algorithm Time');
xlabel('Size of Matrix (x10)');
ylabel('Time (s)');

saveas(f,'TommysAlggy','png');
