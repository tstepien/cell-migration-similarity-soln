%%% README: run this program to solve the boundary value problem
%%% Equation (20) in:
%%%     Tracy L. Stepien and Hal L. Smith, Existence and uniqueness of
%%%     similarity solutions of a generalized heat equation arising in a 
%%%     model of cell migration, Discrete Contin. Dyn. Syst., 35 (2015), 
%%%     3203-3216, DOI: 10.3934/dcds.2015.35.3203.
%%%
%%% Tracy Stepien 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear variables
clc

%%% parameters
param.n = 2;
param.c = 25;

%%% mesh info
t0 = 0;
tend = 10;

%%% initial condition
y0 = 0.5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% solve BVP
[T,X] = solveBVP(t0,tend,y0,param);
x0 = X(1,1);

%%% plots
plot(T,X(:,1),T,X(:,2))
xlabel('t')
legend({'x','x'''})