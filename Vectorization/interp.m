[X1,X2] = ndgrid((-5:1:5));
R = sqrt(X1.^2 + X2.^2)+ eps;
V = sin(R)./(R);
j=1;
for i = 1:0.1:10
	tic
	Vq = interpn(V,i,'cubic');
	mesh(V);
	t(j) = toc;
	j=j+1;
end
f = figure
loglog(t)
title('Refined Grid Time');
saveas(f,'refined_grid_time2','png');
clear all
