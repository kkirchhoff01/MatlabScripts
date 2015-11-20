function [R] = Romberg(f, m, a, b)
% This uses the Romberg method of numerical integration
% using the composite trapezoid rule and the Romberg
% recurrence formula.
%
% Input: f - function (for example: f = @(x) x.*exp(2*x))
%        m - calculate up to R(1,m)
%        a,b - points to integrate over (if a > b they will be switched)
%
% Output: R - The computed integral
	if m < 1
		error('wm must be greater or equal to 1');
	elseif isa(f, 'function_handle') ~= 1
		error('f needs to be a function');
	elseif b < a
		temp =  b;
		b = a;
		a = temp;
	end
	
	for j = 1:m
		R(j,1) = CompTrapezoidal(f,(2^(j-1)), a , b);
	end

	if m == 1
		return
	end
	for k = 2:m
		for j = 1:(m-k+1)
			R(j,k) = R(j+1, k-1) + (R(j+1, k-1) - R(j,k-1))/((4^(k-1))-1);
		end
	end
end
