clear;
format long;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Examples of the trapezoidal and Romberg 
% methods of numerical integration        
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n =3; % number of nodes
a = -1; % first point of integration
b = 1; % last point of integration
f = @(x) x.*exp(2*x); % function to approximate

% Function calls
[T, e] = CompTrapezoidal(f,n,a,b);
[R] = Romberg(f,n,a,b);

fprintf('Composite Trapezoid: T = %f, e = %f\n',T,e);
fprintf('Romberg (3,1): %f\n',R(3,1));
