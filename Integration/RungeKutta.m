function [y,e] = RungeKutta(h, y0, t0, f, Y, B, Order)
% This uses the Runge-Kutta method of numerical integration
% with 2nd order or 4th order, given an IVP and it's actual
% solution.
%
% Input: h - step size
%        y0 - initial condition
%        t0 - initial condition
%        f - approximate function
%        Y - actual solution
%        B - value of beta (method of integration)
%        Order - order of RK method (2nd or 4th)
%
% Output: y - The computed integral
%         e - error

if isa(f, 'function_handle') ~= 1
	error('f needs to be a function');
elseif isa(Y, 'function_handle') ~= 1
	error('Y needs to be a function');
elseif h <= 0 || h > 1
	error('Must have 0 < h < 1');
end

if Order == 2
	if B == 1
		y(1) = y0 + h*f(t0 + (h/2), y0 + (h/2)*f(t0,y0));
		for j = 1:(1/h)
			t(j) = t0 + j*h;
			y(j+1) = y(j) + h*f(t(j) + (h/2), y(j) + (h/2)*f(t(j),y(j)));
			e(j) = abs(Y(t(j)) - y(j));
		end
	elseif B == 3/4
		y(1) = y0 + (h/4)*(f(t0,y0) + 3*f(t0 + (2/3)*h, y0 + (2/3)*h*f(t0,y0)));
		e0 = Y(t0) - y0;
		e(1) = 0;
		for j = 1:(1/h)
			t(j) = t0 + j*h;
			y(j+1) = y(j) + (h/4)*(f(t(j),y(j)) + 3*f(t(j) + (2/3)*h, y(j) + (2/3)*h*f(t(j),y(j))));
			e(j) = abs(Y(t(j)) - y(j));
		end
	end

elseif Order == 4
	k1 = f(t0,y0);
	k2 = f(t0 + (h/2), y0 + (h/2)*k1);
	k3 = f(t0 + (h/2), y0 + (h/2)*k2);
	k4 = f(t0 + h, y0 + h*k3);
	y(1) = y0 + (h/6)*(k1 + 2*k2 + 2*k3 + k4);

	t(1) = t0 + h;
	e(1) = Y(t(1)) - y(1);
	for j = 1:(1/h)
		t(j+1) = t(j) + h;
		k1 = f(t(j),y(j));
		k2 = f(t(j) + (h/2), y(j) + (h/2)*k1);
		k3 = f(t(j) + (h/2), y(j) + (h/2)*k2);
		k4 = f(t(j)+ h, y(j) + h*k3);
		y(j+1) = y(j) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
		e(j) = abs(Y(t(j)) - y(j));
	end
end
