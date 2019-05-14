clear
clc
close all
clear global

global m n OB RANSAC
%--------------------------------------
file_name = '6100.csv';  % 6029 4 laps  5996 2 laps test2.mp4
% 8057 2 laps test3.mp4 04.50.38PM
% 6073 2 laps test5.mp4
% 6051 3 laps with optitrack

%--------------------------------------
import_data(file_name);
%[RANSAC] = import_ransac_data();


m = 1;
n = length(OB.TIME);
% 
%  m = 3322;
%  n = 3502;


plot_log();

%analysis_ransac_file(378)

temp = 1;