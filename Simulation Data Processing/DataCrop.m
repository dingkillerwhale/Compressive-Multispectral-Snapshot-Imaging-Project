close all
clear all
clc

%% This file is to extract the active area from raw cali data and simu data
% to input them into TwIST algorithm
%******* This code isn't done yet *******

% Get current folder path
current_path = pwd;

%% Select the folder where cali data is
cali_path = strcat(current_path, '\2018-01-13 calibration data\');
% Select 256x256 13um x 13um
cali_256_path = strcat(cali_path, '\Detector Sampling256x256 calibration data\Cali_256.mat');

load(cali_256_path);

% Read wavelength
load 'wv_selected.mat'

%% Plot Cali Data

% In OSLO, the design has -0.8169 magnification not close to -1
% Therefore, it's observed that in TracePro the detected cali image has
% shrinked. 

wv_cali = wv_sel.wavelength(1:2:end)*1000;

cali_central = cali(:, :, 11);

cali_central_crop = cali_central(65:128+65-1, 65:128+65-1);

figure;
imagesc(cali_central_crop);
colormap copper;
colorbar


img_crop = cali_central_crop(14:102+14-1,14:102+14-1);
figure;
imagesc(img_crop);
colormap copper;
colorbar
