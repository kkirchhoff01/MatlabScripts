for i = 0:100
	A = gpuArray(rand(1,i)); B = gpuArray(rand(1,i));
	tic
	C(i+1) = dot(A,B);
	time(i+1) = toc;
end

f = figure;
plot(time,'b');

ylim([0,time(100)]);
title('GPU Dot Product Time');
xlabel('Size of Vectors');
ylabel('Time (s)');
saveas(f,'GPUdotTime','png');
