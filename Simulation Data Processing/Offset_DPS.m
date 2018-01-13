close all
clear all
clc


% This file is to calculate the offset of central ray in dual prism system

Phi_1 = 67.636721/180*pi; % Prism Angle 1 (radians)
Phi_2 = 83.482511/180*pi; % Prism Angle 2 (radians)

L1 = 7.165492; % Prism Longitudinal thickness (mm)
L2 = 4.643007; % Air Gap Length (mm)

wv = 0.45:0.0001:0.65; % Wavelength

N =NSF11(wv); % Prism refractive index

Alpha_1 = pi/2 - Phi_1; % Incident angle
Beta_1 = asin(sin(Alpha_1)./N); % Refracted Angle of alpha 1

Beta_2 = pi - Phi_1 - Phi_2 - Beta_1; % Inner Angle of prism
Alpha_2 = asin(sin(Beta_2).*N); % refracted Angle of beta 2

%%%%%%%% Offset Calculation %%%%%%

% Area 1 --- Delta h 1

h1 = sin(pi/2 - Phi_1 - Beta_1).*sin(Phi_2)*L1./sin(pi/2 - Beta_2);


% Area 2 --- Delta h 2

h2 = sin(Phi_2 + Alpha_2 - pi/2).*sin(Phi_2)*L2./sin(pi/2-Alpha_2);

% Area 3 --- Delta h 3

h3 = sin(Phi_2 + Beta_2 - pi/2).*sin(Phi_1).*(L1 - (h1 + h2)*(cot(Phi_1) + cot(Phi_2)))./sin(pi/2 + Beta_1);


% Total Offset

h = -h1 - h2 - h3;
hh = (h - h(ceil(length(h)/2)))*1000;
hh = hh + 6.5;
hh = hh/6.5;

% get the nearest integer displacement and corresponding wavelength

% For Resolution 6.5um
% that will be 
index = [11, 46, 81, 118, 156, 196, 236, 278, 322, 367, ...
            414, 463, 513, 566, 620, 677, 736, 798, 863, 930, ...
   1001, 1075, 1153, 1234, 1320, 1410, 1505, 1605, 1711, 1823, 1943];

wv_sel.wavelength = wv(index);
wv_sel.info = 'Odd Number of Wavelength has been selected as first 16 out 31 wv in 2018-01-11 Simulation Data';


figure
plot(wv, h, 'r-.');
grid on
set(gcf,'color','w');



% Selected channels

% 101 55 19 161

