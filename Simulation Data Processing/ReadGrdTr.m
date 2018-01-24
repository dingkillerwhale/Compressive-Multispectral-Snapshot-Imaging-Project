close all
clear all
clc
%% This file is to read Simu Data from 2018-01-19 GT Data

% Get current folder path
current_path = pwd;

%% Select the folder where GT data is
% This data is sampled by 256x256 13um x 13um
gt_256_path = strcat(current_path, '\2018-01-19 groundtruth\Original Light Source 256\LS_5wv_256.xlsx');

% This data is sampled by 512x512 6.5um x 6.5um
% simu_path = strcat(current_path, '\2018-01-19 groundtruth\Original Light Source 512.xlsx');


%% 2018-01-19 GT Data

wv_LS = [450,500,550,600,650]; % Wavelength
wv_wg = [0.8,0.5,0.9,1.0,0.4]; % Wavelength weight

gt = zeros(256, 256, length(wv_LS)); % 256x256 GT data
% 
% Read GT data
% This data is sampled by 256x256 13um x 13um
for i = 1 : length(wv_LS)
    gt(:,:,i) = xlsread(gt_256_path, num2str(wv_LS(i),'%d'), 'a29:iv284');
end
