close all
clear all
clc
%% This file is to read Simu Data from 2018-01-11 Simu Data

% Get current folder path
current_path = pwd;

%% Select the folder where simu data is
% This data is sampled by 256x256 13um x 13um
simu_path = strcat(current_path, '\2018-01-11 simulation data\Simu_256.xlsx');

% This data is sampled by 512x512 6.5um x 6.5um
% simu_path = strcat(current_path, '\2018-01-11 simulation data\Simu_512.xlsx');


%% 2018-01-11 Simu Data

% This data is sampled by 256x256 13um x 13um
simu = xlsread(simu_path, 'Simu', 'a29:iv284');

% This data is sampled by 512x512 6.5um x 6.5um
% simu = xlsread(simu_path, 'Simu', 'a29:sr540');

figure;
imagesc(simu);
colormap copper;
colorbar;

title('2018-01-11 Simulation Data with 256x256 13um x 13um sampling')

% title('2018-01-11 Simulation Data with 512x512 6.5um x 6.5um sampling')