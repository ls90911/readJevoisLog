clear
clc
close all
clear global

global m n OB RANSAC
%--------------------------------------
file_name = '7747.csv';  % 7224
%--------------------------------------
import_data(file_name);
%[RANSAC] = import_ransac_data();


m = 1;
n = length(OB.TIME);

 m = 2702;
 n = 3502;


plot_log();

temp = 1;

%analysis_ransac_file(3)