clear
clc
close all
clear global

global m n OB RANSAC
%--------------------------------------
file_name = '7470.csv';  % 7224
%--------------------------------------
import_data(file_name);
[RANSAC] = import_ransac_data();


m = 1;
n = length(OB.TIME);
% 
%  m = 3322;
%  n = 3502;


plot_log();

analysis_ransac_file(43)

temp = 1;