for j = 1:500
	A = rand(j); gA = gpuArray(A);
	tic, C = A * A; t2(j) = toc;
	tic, gC = gA * gA; t1(j) = toc;
end

f = figure;
plot(t1,'r');
plot(t2,'b');

ylim([0,t2(500)]);
title('GPU vs CPU Matrix Multiplication Time');
xlabel('Size of NxN Matrix');
ylabel('Time (s)');

saveas(f,'gpuMultCompare500_4core','png');
