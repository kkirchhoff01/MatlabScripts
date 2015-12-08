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
elseif m == 3
	y = AdamsBashforth(h, y0, t0, f, Y, 2);
	t(1) = t0 + h;
	t(2) = t0 + 2*h;
	y(3) = y(2) + (h/12)*(23*f(t(2),y(2)) - 16*f(t(1),y(1)) + 5*f(t0,y0));
elseif m == 4
	y = AdamsBashforth(h, y0, t0, f, Y, 3);
	t(1) = t0 + h;
	t(2) = t0 + 2*h;
	t(3) = t0 + 3*h;
	y(4) = y(3) + (h/24)*(55*f(t(3),y(3)) - 59*f(t(2),y(2)) + 37*f(t(1),y(1)) - 9*f(t0,y0));

elseif m == 5
	y = AdamsBashforth(h, y0, t0, f, Y, 4);
	t(1) = t0 + h;
	t(2) = t0 + 2*h;
	t(3) = t0 + 3*h;
	t(4) = t0 + 4*h;
	y(5) = y(4) + (h/720)*(1901*f(t(4),y(4)) - 2774*f(t(3),y(3)) + 2616*f(t(2),y(2)) - 1274*f(t(1),y(1)) + 251*f(t0,y0));
end
