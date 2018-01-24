close all
clear all
clc

% Translate Matlab pattern file into Scheme file (TracePro)


% Randmask 128x128, Min Feature 13um x 13um(128x128 13um x 13um) 50% Open
load('RndP128_13um.mat');


figure;
imagesc(RndP);
colormap copper;
colorbar;

centre = length(RndP)/2;

[ele_zero_x,ele_zero_y] = find(RndP==0);

unit = 0.013; % mm(TracePro Unit) = 26um

% s = side*[(N+1)/2-a,(N+1)/2-b,zeros(size(a,1),1)];

Seq_Row = (centre - ele_zero_x)*unit + unit/2;
Seq_Col = (centre - ele_zero_y)*unit + unit/2;
Seq_Th = -0.0015/2*ones(size(ele_zero_x,1),1); % Thickness of chrome is 1.5um.
%1mm Borofloat substrate

File_path = 'RndP128_13um.txt';


fID0 = fopen(File_path,'wt');

fprintf(fID0, '%s\n', '(define SetBlocks');
fprintf(fID0, '%s\n', '  (lambda ()');

% Each iteration:31500 max
for i = 1:8192
    
Name_block = strcat('    (define SetBlocks_ID_',num2str(i));
Name_prop = strcat('    (property:apply-name SetBlocks_ID_',num2str(i),' "Block 1")');
Name_move = horzcat('    (edit:move SetBlocks_ID_',num2str(i),' ',num2str(Seq_Col(i)),' ',num2str(Seq_Row(i)),' ',num2str(Seq_Th(i)),')');


fprintf(fID0, '%s\n', Name_block); 
fprintf(fID0, '%s\n', '      (insert:block 0.013 0.013 0.0015) )');
fprintf(fID0, '%s\n', Name_prop);
fprintf(fID0, '%s\n', Name_move);


end

fprintf(fID0, '%s\n', '    )');
fprintf(fID0, '%s\n', '  )');





fclose(fID0);