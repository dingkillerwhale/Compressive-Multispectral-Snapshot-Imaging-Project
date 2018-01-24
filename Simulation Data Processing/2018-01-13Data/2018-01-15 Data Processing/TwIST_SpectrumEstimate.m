close all
clear all
clc

% TwIST Data processing
% relevant data - simu_crop_256, cali_crop_256
load wv_cali.mat
load x_twist_crop_256


N = 16;
frame_sel = [14, 11, 7]; % Select three frames for Triangle, Square and Pentagon to choose ROI
%%% Get triangle area
h=figure;
imagesc(x_twist(:,:,frame_sel(1)));colormap copper;colorbar;

% getrect  returns the coordinates in plot system (col, row) not exact matrix (row, col)
rect_tri = getrect(h);
rect_tri = round(rect_tri);

% The reconstructed data have +1 shift on each frame. Hence, 
% the area of ROI will be shifted back by the selected ROI on current frame.
rect_tri(1) = rect_tri(1)-frame_sel(1)+1; 

%%% Get square area
h=figure;
imagesc(x_twist(:,:,frame_sel(2)));colormap copper;colorbar;
rect_sq = getrect(h);
rect_sq = round(rect_sq);
rect_sq(1) = rect_sq(1)-frame_sel(2)+1;

%%% Get pentagon area
h=figure;
imagesc(x_twist(:,:,frame_sel(3)));colormap copper;colorbar;
rect_pen = getrect(h);
rect_pen = round(rect_pen);
rect_pen(1) = rect_pen(1)-frame_sel(3)+1;

%%%%%%%%%%%%%%%%%%
% Triangle

spec_t = zeros(1,N);

for i =1:N

    spec_t(i) = mean(mean(x_twist(rect_tri(2):rect_tri(2)+rect_tri(4)-1,rect_tri(1)+i-1:rect_tri(1)+rect_tri(3)-1+i-1,i)));
    
end

figure;
plot(wv_cali,spec_t,'-*r','LineWidth',2, ...
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

    spec_s(i) = mean(mean(x_twist(rect_sq(2):rect_sq(2)+rect_sq(4)-1,rect_sq(1)+i-1:rect_sq(1)+rect_sq(3)-1+i-1,i)));
    
end

figure;
plot(wv_cali,spec_s,'-.^k','LineWidth',2, ...
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

    spec_p(i) = mean(mean(x_twist(rect_pen(2):rect_pen(2)+rect_pen(4)-1,rect_pen(1)+i-1:rect_pen(1)+rect_pen(3)-1+i-1,i)));
    
end

figure;
plot(wv_cali,spec_p,'--o','LineWidth',2, ...
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
