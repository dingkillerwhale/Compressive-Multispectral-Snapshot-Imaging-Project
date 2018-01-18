close all
clear all
clc

% TwIST Data processing
% relevant data - simu_crop_256, cali_crop_256
load wv_cali.mat
load x_twist_crop_256


N = 16;
%%% Get triangle area
h=figure;
imagesc(x_twist(:,:,14));colormap copper;colorbar;

% getrect  returns the coordinates in plot system not exact matrix row and col
rect_tri = getrect(h);
rect_tri = round(rect_tri);

rect_tri(1) = rect_tri(1)-13;

%%% Get square area
h=figure;
imagesc(x_twist(:,:,11));colormap copper;colorbar;
rect_sq = getrect(h);
rect_sq = round(rect_sq);
rect_sq(1) = rect_sq(1)-10;

%%% Get pentagon area
h=figure;
imagesc(x_twist(:,:,7));colormap copper;colorbar;
rect_pen = getrect(h);
rect_pen = round(rect_pen);
rect_pen(1) = rect_pen(1)-6;

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