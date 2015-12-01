function [y,e] = RungaKutta(h, y0, t0, f, Y)
	y(1) = y0 + h*f(t0 + (h/2), y0 + (h/2)*f(t0,y0));
	for j = 1:(1/h)
		t(j) = t0 + j*h;
		y(j+1) = y(j) + h*f(t(j) + (h/2), y(j) + (h/2)*f(t(j),y(j)));
		e(j) = Y(t(j)) - y(j);
	end
end
