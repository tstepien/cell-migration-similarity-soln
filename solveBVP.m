function [T,X] = solveBVP(t0,tend,y0,param)
% [T,X] = solveBVP(t0,tend,y0,param)
%
% Solves the boundary value problem.  Also contains the subfunction
% "findbounds" for choosing good guesses for the shooting+secant method.
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

[leftbound,rightbound] = findbounds(y0,param);

x0 = secant(@(x0) shoot(x0,t0,tend,y0,param),leftbound,rightbound);

[T,X] = feval(@solveIVP,t0,tend,x0,y0,param);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [leftbound,rightbound] = findbounds(y0,param)

if y0>0
    rightbound = 0;
    if param.n==2
        if param.c >= 10
            leftbound = -0.5;
        elseif param.c >= 4
            leftbound = -1;
        else
            leftbound = -2;
        end
    elseif param.n==3
        if param.c >= 15
            leftbound = -0.25;
        elseif param.c >= 5
            leftbound = -0.5;
        else
            leftbound = -1;
        end
    elseif param.n==5
        if param.c >= 15
            leftbound = -0.1;
        elseif param.c >= 5
            leftbound = -0.2;
        else
            leftbound = -0.4;
        end
    else
        leftbound = -5;
    end
else
    leftbound = 0;
    if param.n == 2
        rightbound = 5;
    elseif param.n == 3
        rightbound = 10;
    elseif param.n == 5 
        if param.c <=4
            rightbound = 15;
        elseif param.c >= 15
            rightbound = 3;
        else
            rightbound = 5;
        end
    else
        rightbound = 5;
    end
end