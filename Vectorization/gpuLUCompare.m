for j = 1:5000
	A = rand(j); gA = gpuArray(A);
	tic, C = A * A; t2(j) = toc;
	tic, gC = gA * gA; t1(j) = toc;
end

f = figure;
hold on;
loglog(t1,'r');
loglog(t2,'b');

ylim([0,t2(5000)]);
title('GPU vs CPU Matrix Multiplication Time');
xlabel('Size of NxN Matrix');
ylabel('Time (s)');

saveas(f,'GPUvsCPU5000_2','png');
