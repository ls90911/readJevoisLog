clear
clc
close all
clear global

global m n OB RANSAC
%--------------------------------------
file_name = '5369.csv';
%--------------------------------------
import_data(file_name);
[RANSAC] = import_ransac_data();


m = 1;
n = length(OB.TIME);

% m = 2722;
% n = 2812;


plot_log();

%analysis_ransac_file(3)