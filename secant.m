function x = secant(f,x1,x2,maxIts)
% x = secant(f,x1,x2,maxIts)
%
% Secant method is used to find x so that f(x)=0
%
% inputs:
%   f       = name of a function with signature y=f(x)
%   [x1,x2] = two initial guesses
%   maxIts  = maximum number of iterations
%             (optional argument, default value is 100)
%
% outputs:
%   x = final solution
%
% Tracy Stepien 2014

if nargin < 4
    maxIts = 100; %%% default value if maxIts is omitted
end

EPSILON = 1.0e-6; %%% tolerance

func1 = feval(f,x1);
func2 = feval(f,x2);

for numIts=1:maxIts
    increment = -func2*(x2-x1)/(func2-func1);
    x1 = x2;
    x2 = x2 + increment;
    x = x2;
    
    func1 = feval(f,x1);
    func2 = feval(f,x2);
    
    errorEstimate = abs(increment);
    errorEstimateFunc = abs(func2-func1);
    
    if errorEstimate<EPSILON && errorEstimateFunc<EPSILON
        return;
    end
end

% if get here, the secant iteration has failed!
error('secant: maximum number of iterations exceeded.')