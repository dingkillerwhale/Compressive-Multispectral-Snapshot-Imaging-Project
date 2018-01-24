close all
clear all
clc

%%% Comparision between estimate and ground truth - Spectra

% Spectra estimate data from 
% D:\PhD Project\Tuneable Dual Prism Dispersion Simulation 050817\CASSI Code - Duke University\2018-01-18 x_twist_crop_256
load x_twist_spec_crop_256.mat 

% Spectra ground truth data from
% D:\PhD Project\Tuneable Dual Prism Dispersion Simulation 050817\TracePro Simulation 090118\2018-01-19 groundtruth\Original Light Source 256
load gt_spec_crop_256.mat

%%%%%%%%%%%%%%%%%%
% Triangle

figure;
plot(spec_gt.wv,spec_gt.t,'-*r','LineWidth',1, ...
    'MarkerEdgeColor','b',...
    'MarkerSize',10);
hold on
plot(spec_x_twist.wv,spec_x_twist.t,'-.^g','LineWidth',1, ...
    'MarkerEdgeColor','k',...
    'MarkerSize',10);

xlabel('Spectrum/nm');
ylabel('Ratio');
title('Triangel GT Spectra vs Estimate Spectra');
% axis([450 650]);
set(gca,'XTick',450:20:650);
% set(gca,'YTick',0:0.1:0.5);
grid on
legend('Ground Truth','Estimate');
set(gcf,'color','w');


%%%%%%%%%%%%%%%%%%
% Square

figure;
plot(spec_gt.wv,spec_gt.s,'-*r','LineWidth',1, ...
    'MarkerEdgeColor','b',...
    'MarkerSize',10);
hold on
plot(spec_x_twist.wv,spec_x_twist.s,'-.^g','LineWidth',1, ...
    'MarkerEdgeColor','k',...
    'MarkerSize',10);

xlabel('Spectrum/nm');
ylabel('Ratio');
title('Square GT Spectra vs Estimate Spectra');
% axis([450 650]);
set(gca,'XTick',450:20:650);
% set(gca,'YTick',0:0.1:0.5);
grid on
legend('Ground Truth','Estimate');
set(gcf,'color','w');


%%%%%%%%%%%%%%%%%%
% Pentagon

figure;
plot(spec_gt.wv,spec_gt.p,'-*r','LineWidth',1, ...
    'MarkerEdgeColor','b',...
    'MarkerSize',10);
hold on
plot(spec_x_twist.wv,spec_x_twist.p,'-.^g','LineWidth',1, ...
    'MarkerEdgeColor','k',...
    'MarkerSize',10);

xlabel('Spectrum/nm');
ylabel('Ratio');
title('GT Spectra vs Estimate Spectra');
% axis([450 650]);
set(gca,'XTick',450:20:650);
% set(gca,'YTick',0:0.1:0.5);
grid on
legend('Pentagon Ground Truth','Estimate');
set(gcf,'color','w');