close all
clear all
clc

% Generate Random Mask Kernel

A = [ 0 1 0 1 ...
      1 1 0 1 ...
      0 1 0 0 ...
      1 0 1 0];
  
Mat = zeros(128); % Generate 128x128 pattern array

for i = 1 : 4 : 128
    for j = 1 : 4 : 128
        ind = randperm(16); % shuffle 16 indices from 4x4 matrix
        ker = reshape(ind,4,4); % get a new 4x4 matrix        
        Mat(i:i+3,j:j+3) = A(ker); % add the new matrix into pattern array
    end
end

figure;
imagesc(Mat);colormap copper;
set(gcf,'color','w'); % Set background white
title('128x128 13um RandomPattern'); 
RndP = Mat;

r = rank(RndP);
  
