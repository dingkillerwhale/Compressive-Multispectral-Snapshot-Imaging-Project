close all
clc

pixel = 0.013; % 6.5um detector pitch

syms f_num
lambda = 0.00065; % 0.7um = 0.0007mm
% f_num = 7.808427; % F/#
f_y = 1/2/pixel; % Spatial Frequency  
N_A = 1/2/f_num; % Numerical Aperture
% W = 0.0065; % Width of slit or band: mm
f_c = 2*N_A/lambda; % Cut-off spatial requency
%********************************************************
% Calculation F/# by system MTF equation

% MTF of an optical sysmte without aberration and with a uniformly
% transmitting circular aperture (Ideal Diffraction limit MTF)
M1 = 2/pi*(acos(lambda*f_y/2/N_A)-lambda*f_y/2/N_A*sin(acos(lambda*f_y/2/N_A)));

    % for a slit or rectangular aperture
%     M2 = 1 - f_y/f_c; % = 1/lambda/f_num


% A system whose image is a uniformly illuminated slit, or band , of light
% has an MTF given by (Detector MTF)
% M3 = sinc(W*f_y);

eqn = M1 == 0.5;
solx = solve(eqn,f_num);
f_num = solx;
f_c = 1/lambda/f_num; % Cutting spatial frequency
N_A = 1/2/f_num; % Numerical Aperture
% 
fprintf('F/#: %.2f \n',solx);
fprintf('cut-off spatial frequency f_c: %.2f \n',f_c);
fprintf('spatial frequency f_y @50: %.2f \n',f_y);



f_num_new = 7.5; % F/#
f_y_new = f_y; 
N_A_new = 1/2/f_num_new; % Numerical Aperture
% W = 0.0065; % Width of slit or band: mm
f_c = 2*N_A/lambda; % Cut-off spatial requency
%********************************************************
% Calculation F/# by system MTF equation

% MTF of an optical sysmte without aberration and with a uniformly
% transmitting circular aperture (Ideal Diffraction limit MTF)
M1_new = 2/pi*(acos(lambda*f_y_new/2/N_A_new)-lambda*f_y_new/2/N_A_new*sin(acos(lambda*f_y_new/2/N_A_new)));




