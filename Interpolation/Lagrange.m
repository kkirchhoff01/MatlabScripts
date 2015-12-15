function [L] = Lagrange(xs, n, k)

% Function to create a Lagrange polynomial
%
% Input: xs - array of points
%        n - size of xs
%        k - poistion of point to interpolate for
%
% Output: L - function handle for Lagrange polynomial

syms L(x);
L(x) = 1;
xk = xs(k);

for i = 1:n
    if i ~= k
        L = L.*(x-xs(i))/(xk-xs(i));
    end
end
