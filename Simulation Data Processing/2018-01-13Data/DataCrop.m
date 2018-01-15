close all
clear all
clc

%% This file is to extract the active area from raw cali data and simu data
% to input them into TwIST algorithm
%******* This code isn't done yet *******

% Get current folder path
current_path = pwd;

%% Read simu data and cali data

% Select 256x256 13um x 13um
cali_path = strcat(current_path, '\2018-01-13 calibration data\');
cali_256_path = strcat(cali_path, 'Detector Sampling256x256 calibration data\Cali_256.mat');

load(cali_256_path);


% Select 256x256 13um x 13um
simu_path = strcat(current_path, '\2018-01-11 simulation data\');
simu_256_path = strcat(simu_path, 'simu_256.mat');

load(simu_256_path);

% Read wavelength
load 'wv_selected.mat'

%% Crop Cali Data and Simu Data

% Note: In OSLO, the design has -0.8169 magnification not close to -1
% Therefore, it's observed that in TracePro the detected cali image has
% shrinked. 

wv_cali = wv_sel.wavelength(1:2:end)*1000;

cali_central = cali(:, :, 16);

cali_central_crop = cali_central(65:128+65-1, 65:128+65-1);

figure;
imagesc(cali_central_crop);
colormap copper;
colorbar

simu_crop = flip(simu(60:128+65-1+10,65:128+65-1),2)';

figure;
imagesc(simu_crop);
colormap copper;
colorbar

cali_crop = zeros(size(simu_crop,1),size(simu_crop,2),16);


for i = 16 : -1 : 1
   cali_crop(:,1+16-i:128+16-i,i) = flip(cali(60+16-i:128+60-1+16-i,65:128+65-1,i),2)';     
end











