function [y,e] = AdamsBashforth(h, y0, t0, f, Y, m, n)

if m == 1
	y(1) = y0 + h*f(t0,y0);
elseif m == 2
	%y = AdamsBashforth(h, y0, t0, f, Y, 1);
	t(1) = t0 + h;
	t(1) = t0 + 2*h;
	y(1) = Y(t(1));
	y(2) = y(1) + (h/2)*(3*f(t(1),y(1)) - f(t0,y0));
	e(1) = Y(t(1)) - y(1);
	for j = 2:n
		t(j) = t0 + j*h;
		e(j) = Y(t(j)) - y(j);
		y(j+1) = y(j) + (h/2)*(3*f(t(j), y(j)) - f(t(j-1),y(j-1)));
	end
end
