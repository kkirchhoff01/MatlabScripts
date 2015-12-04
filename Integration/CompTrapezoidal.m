function [T,e] = CompTrapezoidal(f, n, a, b)
% This uses the composite trapizoid method to numerically integrate
% a function.
% Input: f - function (for example: f = @(x) x.*exp(2*x))
%        n - number of nodes
%        a,b - points to integrate over (if a > b they will be switched)
%
% Output: T - The computed integral
%         e - real error (I(f) - T(f))

	if n < 1
		error('n must be greater or equal to 1');
	elseif isa(f, 'function_handle') ~= 1
		error('f needs to be a function');
	elseif b < a
		temp =  b;
		b = a;
		a = temp;
	end

	h = (b - a)/n;
	T = (f(a) + f(b));

	if n == 1
		T = (h/2)*T;
		e = integral(f,a,b) - T;
		return
	end

	for j = 1:n-1
		T = T + 2*f(a+j*h);
	end

	T = T*(h/2);
	e = abs(integral(f, a, b) - T);
end
