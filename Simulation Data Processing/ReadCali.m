close all
clear all
clc
%% This file is to read Simu Data from 2018-01-13 calibration data

% Get current folder path
current_path = pwd;

%% Select the folder where cali data is
cali_path = strcat(current_path, '\2018-01-13 calibration data\');
% Select 256x256 13um x 13um
% cali_256_path = strcat(cali_path, '\Detector Sampling256x256 calibration data\Cali_256.xlsx');

% Select 512x512 6.5um x 6.5um
cali_512_path = strcat(cali_path, '\Detector Sampling512x512 calibration data\Cali_512.xlsx');

%% 2018-01-13 Cali Data (part1: 16 out of 31 wavelengths selected as linear displacement with 13um/unit step length)

% Read wavelength
load 'wv_selected.mat'

wv_cali = wv_sel.wavelength(1:2:end)*1000;

% cali = zeros(256,256,length(wv_cali)); % 256x256 cali data
cali = zeros(512, 512, length(wv_cali)); % 512x512 cali data

% Read Cali Data
% This data is sampled by 256x256 13um x 13um
% for i = 1 : length(wv_cali)
%     cali(:,:,i) = xlsread(cali_256_path, num2str(wv_cali(i),'%.1f'), 'a29:iv284');
% end

% This data is sampled by 512x512 6.5um x 6.5um
for i = 1 : length(wv_cali)
    cali(:,:,i) = xlsread(cali_512_path, num2str(wv_cali(i),'%.1f'), 'a29:sr540'); % Wavelength Index is in the format of '550.0'
end
