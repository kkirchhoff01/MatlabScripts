function [y,e] = RungaKutta(h, y0, t0, f, Y)
	y(1) = y0;
	t(1) = t0;
	e(1) = Y(0) - y(1);
	for j = 1:(1/h)+1
		t(j) = t0 + (j-1)*h;
		y(j+1) = y(j) + h*f(t(j) + (h/2), y(j) + (h/2)*f(t(j),y(j)));
		e(j) = Y(t(j)) - y(j);
	end
	e((1/h)+2) = Y(t0+h*((1/h)+2)) - y((1/h)+2);
end
