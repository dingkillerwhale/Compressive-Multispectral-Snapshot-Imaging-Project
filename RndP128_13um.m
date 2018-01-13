close all
clear all
clc

% Generate Mask

A = [ 0 1 0 1 ...
      1 1 0 1 ...
      0 1 0 0 ...
      1 0 1 0];
  
Mat = zeros(128);
for i = 1 : 4 : 128
    for j = 1 : 4 : 128
        ind = randperm(16);
        ker = reshape(ind,4,4);        
        Mat(i:i+3,j:j+3) = A(ker);
    end
end

figure;
imagesc(Mat);colormap copper;
set(gcf,'color','w'); % Set background white
title('128x128 13um RandomPattern'); 
RndP = Mat;

r = rank(RndP);
  