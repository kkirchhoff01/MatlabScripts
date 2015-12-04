function [t2] = tomAlgorithm2(A2,q2,n2)

tic
[l2,u2] = lu(A2);
y2 = zeros(n2,1);
y2(1) = q2(1);

for p2 = 2:1:n2
	y2(p2) = q2(p2) - l2(p2,p2)*y2(p2-1);
end

x2(n2) = y2(n2)'/u2(n2);

for r2 = n2-1:-1:1
	x2(r2) = (y2(r2)-(u2(r2,r2+1)*x2(r2+1)'))'/u2(r2,r2);
end
t2 = toc;
