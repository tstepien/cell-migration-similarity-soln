function [T,X] = solveIVP(t0,tend,x0,y0,param)
% [T,X] = solveIVP(t0,tend,x0,y0,param)
%
% Solves the initial value problem.
%
% inputs:
%   [t0,tend] = interval for solution
%   x0        = initial condition x(0)
%   y0        = initial condidion x'(0)
%   param     = structure that contains parameters of the equation
%               (e.g., if a and b are paramaters, param contains param.a 
%               and param.b)
%
% outputs:
%   T = solution time points
%   X = solution x points
%
% Tracy Stepien 2014

options = odeset('RelTol',1e-6,'AbsTol',1e-6,'MaxStep',1e-3,...
    'Jacobian',@(t,x) selfsimJac(t,x,param));
[T,X] = ode15s(@(t,x) selfsimODE(t,x,param),[t0,tend],[x0,y0],options);