clear
clc
close all
clear global

global m n OB
%--------------------------------------
file_name = '6144.csv';
%--------------------------------------
import_data(file_name);

m = 1;
n = length(OB.TIME);

% m = 2722;
% n = 2812;


plot_log();