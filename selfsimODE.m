function f = selfsimODE(t,x,param)
% f = selfsimODE(t,x,param)
%
% The system of equations to be solved.
%   x' = y
%   y' = c(x-ty)(y+1)^n
%
% inputs:
%   t     = time points
%   x     = x points
%   param = structure that contains parameters of the equation
%               (e.g., if a and b are paramaters, param contains param.a 
%               and param.b)
%
% output:
%   f = evaluation of the right hand side of the system of equations
%
% Tracy Stepien 2014

c = param.c;
n = param.n;

f1 = x(2);
f2 = c*(x(1)-t*x(2))*(x(2)+1)^n;

f = [f1 ; f2];