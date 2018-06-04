%%% README: run this program to plot the stable manifold for n=0,2,3,5
%%% Figure 3 in:
%%%     Tracy L. Stepien and Hal L. Smith, Existence and uniqueness of
%%%     similarity solutions of a generalized heat equation arising in a 
%%%     model of cell migration, Discrete Contin. Dyn. Syst., 35 (2015), 
%%%     3203-3216, DOI: 10.3934/dcds.2015.35.3203.
%%%
%%% Tracy Stepien 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear variables
clc

imagetype = 'presentation'; %%% this is 'paper' (for print) or 
                            %%% 'presentation' (for projected slides)

figure
for i = [0,2:3,5]
    if i==0
        load data/n0_data.mat
        num_xprime0 = 37;
        if strcmp(imagetype,'paper')==1
            surfcolor = 'green';
        elseif strcmp(imagetype,'presentation')==1
            surfcolor = [0.4660    0.6740    0.1880];
        end
        edgecolor = [0 .5 0];
    elseif i==2
        load data/n2_data.mat
        num_xprime0 = 64;
        if strcmp(imagetype,'paper')==1
            surfcolor = 'blue';
        elseif strcmp(imagetype,'presentation')==1
            surfcolor = [0    0.4470    0.7410];
        end
        edgecolor = [0 0 .5];
    elseif i==3
        load data/n3_data.mat
        num_xprime0 = 28;
        if strcmp(imagetype,'paper')==1
            surfcolor = 'red';
        elseif strcmp(imagetype,'presentation')==1
            surfcolor = [0.8500    0.3250    0.0980];
        end
        edgecolor = [.5 0 0];
    elseif i==5
        load data/n5_data.mat
        num_xprime0 = 28;
        if strcmp(imagetype,'paper')==1
            surfcolor = 'yellow';
        elseif strcmp(imagetype,'presentation')==1
            surfcolor = [0.9290    0.6940    0.1250];
        end
        edgecolor = [.75 .75 0];
    end
    num_c = 40;
    
    x0 = reshape(data(:,1),num_xprime0,num_c)';
    x0prime = reshape(data(:,2),num_xprime0,num_c)';
    c = reshape(data(:,3),num_xprime0,num_c)';
    
    surf(x0,c,x0prime,'FaceColor',surfcolor,'EdgeColor',edgecolor)
    xlabel('$x(0)$','FontSize',18,'Interpreter','latex')
    ylabel('$c$','FontSize',18,'Interpreter','latex')
    zlabel('$x^{\prime}(0)$','FontSize',18,'Rotation',1,'Interpreter','latex')%,'Position',[-17 36])
    set(gca,'FontName','Times','FontSize',16,'Units','normalized'); %axes
    set(gcf,'Units', 'centimeters','PaperPositionMode','auto');
    grid on
    hold on
end

camorbit(45,-10)