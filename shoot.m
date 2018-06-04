function s = shoot(x0,t0,tend,y0,param)
% s = shoot(x0,t0,tend,y0,param)
%
% Contains the requirement that x'(t) -> 0 as t->tend for the shooting
% method.
%
% inputs:
%   [t0,tend] = interval for solution
%   x0        = initial condition x(0)
%   y0        = initial condidion x'(0)
%   param     = structure that contains parameters of the equation
%               (e.g., if a and b are paramaters, param contains param.a 
%               and param.b)
%
% output:
%   s = value of x(tend)
%
% Tracy Stepien 2014

[~,X] = feval(@solveIVP,t0,tend,x0,y0,param);

s = X(end,2);