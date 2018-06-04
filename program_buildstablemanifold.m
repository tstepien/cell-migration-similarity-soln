%%% README: run this program to solve many boundary value problems and save
%%% the corresponding x(0) and x'(0) values in a .mat file
%%% To collect data for Figure 3 in:
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
param.n = 5;
c = 1:1:40;

%%% mesh info
t0 = 0;
tend = 20;

%%% initial condition
y0 = -0.8:0.2:1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% solve for initial condition x0
C = length(c);
Y = length(y0);
data = zeros(C*Y,3);
ind = 0;

for i = 1:C
    param.c = c(i);
    for j = 1:Y
        ind = ind + 1;
        if isequal(ind/10,ceil(ind/10))==1
            disp(ind)
        end
        
        clear T X x0
        [T,X] = solveBVP(t0,tend,y0(j),param);
        x0 = X(1,1);
        
        data(ind,:) = [x0 , y0(j) , c(i)];
    end
end

timedate = clock;
savefile = sprintf('data/%g_%g_%g_%g_%g.mat',timedate(1),timedate(2),...
    timedate(3),timedate(4),timedate(5));
save(savefile,'data')