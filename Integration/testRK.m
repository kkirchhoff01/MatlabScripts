clear;
format long;

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Test of RungeKutta.m
%%%%%%%%%%%%%%%%%%%%%%%%%%

y0 = 0;
t0 = 0;
f = @(t,y) 1/(1+t.^2) - 2*y.^2;
Y = @(t) t/(1+t.^2);
h = 1/5;
fprintf('RungeKutta Test with h=%f\n', h);
[y,e] = RungeKutta(h, y0, t0, f, Y, 1, 4);
for j = 1:(1/h)
	fprintf('y_%i = %f\n e_%i = %f\n', j+1, y(j+1), j, e(j));
end
