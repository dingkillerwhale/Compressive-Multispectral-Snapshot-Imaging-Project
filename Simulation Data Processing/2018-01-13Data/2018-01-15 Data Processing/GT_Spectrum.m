close all
clear all
clc

%% This file is to extract the active area from raw cali data and simu data
% to input them into TwIST algorithm
%******* This code isn't done yet *******

% Get current folder path
current_path = pwd;

%% Read gt data

% Select 256x256 13um x 13um
gt_LS_256_path = strcat(current_path, '\2018-01-19 groundtruth\Original Light Source 256\gt_LS_256.mat'); % gt_LS_256.mat path

load(gt_LS_256_path);

wv_LS = [450,500,550,600,650]; % Wavelength
wv_wg = [0.8,0.5,0.9,1.0,0.4]; % Wavelength weight

%% GT data

% Note: In OSLO, the design has -0.8169 magnification not close to -1
% Therefore, it's observed that in TracePro the detected cali image has
% shrinked. 


gt_LS_crop_256 = gt(65:128+65-1,65:128+65-1,:);

gt_LS_crop_256 = gt_LS_crop_256/max(gt_LS_crop_256(:));


figure;
imagesc(gt_LS_crop_256(:,:,3));
colormap copper;
colorbar

%% Plot Ground truth of Light Source
wv_display = 450:10:650;
N = length(wv_display);
%%%%%%%%%%%%%%%%%%
% Triangle

spec_t = zeros(1,N);

for i =1:N
    
    switch 10*(i-1)+450
        case 450
            spec_t(i) = gt_LS_crop_256(34,93,1);
        case 500
            spec_t(i) = gt_LS_crop_256(34,93,2);
        case 550
            spec_t(i) = gt_LS_crop_256(34,93,3);
        case 600
            spec_t(i) = gt_LS_crop_256(34,93,4);
        case 650
            spec_t(i) = gt_LS_crop_256(34,93,5);
        otherwise
            spec_t(i) = 0;     
            
    end
    
end

figure;
plot(wv_display,spec_t,'-*r','LineWidth',2, ...
    'MarkerEdgeColor','b',...
    'MarkerSize',10);
xlabel('Spectrum/nm');
ylabel('Normalization Ratio');
title('Triangle Spectrum Estimation');
% axis([450 650]);
set(gca,'XTick',450:20:650);
% set(gca,'YTick',0:0.1:0.5);
grid on


%%%%%%%%%%%%%%%%%%
% Square

spec_s = zeros(1,N);

for i =1:N
    
    switch 10*(i-1)+450
        case 450
            spec_s(i) = gt_LS_crop_256(99,80,1);
        case 500
            spec_s(i) = gt_LS_crop_256(99,80,2);
        case 550
            spec_s(i) = gt_LS_crop_256(99,80,3);
        case 600
            spec_s(i) = gt_LS_crop_256(99,80,4);
        case 650
            spec_s(i) = gt_LS_crop_256(99,80,5);
        otherwise
            spec_s(i) = 0;     
            
    end
    
end

figure;
plot(wv_display,spec_s,'-.^k','LineWidth',2, ...
    'MarkerEdgeColor','b', ...
    'MarkerFaceColor','g', ...
    'MarkerSize',10);
xlabel('Spectrum/nm');
ylabel('Normalization Ratio');
title('Square Spectrum Estimation');
% axis([450 650]);
set(gca,'XTick',450:20:650);
% set(gca,'YTick',0:0.1:0.5);
grid on


%%%%%%%%%%%%%%%%%%
% Pentagon

spec_p = zeros(1,N);

for i =1:N
    
    switch 10*(i-1)+450
        case 450
            spec_p(i) = gt_LS_crop_256(54,40,1);
        case 500
            spec_p(i) = gt_LS_crop_256(54,40,2);
        case 550
            spec_p(i) = gt_LS_crop_256(54,40,3);
        case 600
            spec_p(i) = gt_LS_crop_256(54,40,4);
        case 650
            spec_p(i) = gt_LS_crop_256(54,40,5);
        otherwise
            spec_p(i) = 0;     
            
    end
    
end

figure;
plot(wv_display,spec_p,'--o','LineWidth',2, ...
    'MarkerEdgeColor','k', ...
    'MarkerFaceColor','y', ...
    'MarkerSize',10);
xlabel('Spectrum/nm');
ylabel('Normalization Ratio');
title('Pentagon Spectrum Estimation');
% axis([450 650]);
set(gca,'XTick',450:20:650);
% set(gca,'YTick',0:0.1:0.5);
grid on
%%

spec_gt.t = spec_t;
spec_gt.s = spec_s;
spec_gt.p = spec_p;
spec_gt.wv = wv_display;


