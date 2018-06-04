%%% README: run this program to solve the initial value problem
%%% Equation (20) (with no boundary condition at t->infinity) in:
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
param.n = 3;
param.c = 2;

%%% mesh info
t0 = 0;
tend = 30;

%%% initial condition
x0 = 20;
y0 = -.98;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% solve IVP
[T,X] = solveIVP(t0,tend,x0,y0,param);

%%% plots
plot(T,X(:,1),T,X(:,2))
xlabel('t')
legend({'x','x'''})