function [t] = tomAlgorithm(A,q,n)

tic
[l,u] = lu(A);
y = zeros(n,1);
y(1) = q(1);

p = 2:1:n;
y(p) = q(p) - l(p,p)*y(p-1);

x(n) = y(n)'/u(n);

r = n-1:-1:1;
x(r) = (y(r)-(u(r,r+1)*x(r+1)'))'/u(r,r);

t = toc;
