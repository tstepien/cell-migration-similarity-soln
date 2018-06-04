%%% README: run this program to plot a single simulation 
%%% Figure 1 in:
%%%     Tracy L. Stepien and Hal L. Smith, Existence and uniqueness of
%%%     similarity solutions of a generalized heat equation arising in a 
%%%     model of cell migration, Discrete Contin. Dyn. Syst., 35 (2015), 
%%%     3203-3216, DOI: 10.3934/dcds.2015.35.3203.
%%%
%%% Tracy Stepien 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Figure 1A
load data/samplesim_n2_c25_y0_p5.mat
figure
plot(T,X(:,1),'b',T,X(:,2),':r','LineWidth',2)
xlabel('$z$','FontSize',34,'Interpreter','latex')
legd = legend({'$h$','$h''$'});
set(legd,'FontSize',24,'Interpreter','latex')
axis([0 2 -0.1 0.6])
title('\bf A','FontSize',34,'Units','normalized','Position', [0.05 0.99]);
set(gca,'FontName','Times','FontSize',24,'Units','normalized'); %axes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Figure 1B
load data/samplesim_n2_c25_y0_np5.mat

figure
plot(T,X(:,1),'b',T,X(:,2),':r','LineWidth',2)
xlabel('$z$','FontSize',34,'Interpreter','latex')
legd = legend({'$h$','$h''$'});
set(legd,'FontSize',24,'Interpreter','latex')
axis([0 2 -0.6 0.2])
title('\bf B','FontSize',34,'Units','normalized','Position', [0.05 0.99]);
set(gca,'FontName','Times','FontSize',24,'Units','normalized'); %axes