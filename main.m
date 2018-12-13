clear
clc
close all
clear global

global m n OB RANSAC
%--------------------------------------
file_name = '7685.csv';  % 7224
%--------------------------------------
import_data(file_name);
[RANSAC] = import_ransac_data();


% m = 1;
% n = length(OB.TIME);

 m = 2402;
 n = 3102;


plot_log();

analysis_ransac_file(72)

temp = 1;