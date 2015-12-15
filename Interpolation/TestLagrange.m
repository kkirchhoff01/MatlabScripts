clear;
format long

%Polynmial interpolation of x^3 points 1, 5 and 10

xs = [1,5,10];
f = @(x) x.^3;
fv = f(xs)

syms P(x);
P = 0;
for j = 1:3
    P = P + Lagrange(xs,3,j)*fv(j);
end

P
