function J = selfsimJac(t,x,param)
% J = selfsimJac(t,x,param)
%
% The Jacobian of the system of equations to be solved.
%   x' = y
%   y' = c(x-ty)(y+1)^n
%
% where the Jacobian J = 
%   [ 0           1
%   c(y+1)^n    c(-t(y+1)^n+n(x-ty)(y+1)^(n-1)) ]
%
% inputs:
%   t     = time points
%   x     = x points
%   param = structure that contains parameters of the equation
%               (e.g., if a and b are paramaters, param contains param.a 
%               and param.b)
%
% output:
%   J = evaluation of the Jacobian
%
% Tracy Stepien 2014

c = param.c;
n = param.n;

J11 = 0;
J12 = 1;
J21 = c*(x(2)+1)^n;
J22 = c*(-t*(x(2)+1)^n + n*(x(1)-t*x(2))*(x(2)+1)^(n-1));

J = [J11 J12 ; J21 J22];