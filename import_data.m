function [] = import_data(file_name)
global OB

data = csvread(file_name,3,0);

OB.AX = data(:,2);
OB.AY = data(:,3);
OB.AZ = data(:,4);
OB.P = data(:,5);
OB.Q = data(:,6);
OB.R = data(:,7);
OB.PHI = data(:,8);
OB.THETA = data(:,9);
OB.PSI = data(:,10);
OB.POSE_X = data(:,11);
OB.POSE_Y = data(:,12);
OB.POSE_Z = data(:,13);

OB.PRE_X = data(:,14);
OB.PRE_Y = data(:,15);
OB.PRE_VX = data(:,16);
OB.PRE_VY = data(:,17);
OB.PRE_PSI = data(:,18);
OB.DETECT_X_E = data(:,19);
OB.DETECT_Y_E = data(:,20);

OB.PHI_CMD = data(:,29);
OB.THETA_CMD = data(:,30);
OB.PSI_CMD = data(:,31);
OB.ALT_CMD = data(:,32);

OB.GATE_NUM = data(:,36);
OB.FILTERED_X = data(:,37);
OB.FILTERED_Y = data(:,38);

OB.TIME = data(:,1);
t0 = OB.TIME(1);
p = 1;
for i = 1:length(OB.TIME)
    if i == 1
        OB.TIME(i) =  (OB.TIME(i)-t0)/1000.0;
    else
        OB.TIME(i) =  (OB.TIME(i)-t0)/1000.0;
        if OB.POSE_X(i) ~= 0 && OB.POSE_X(i) ~= OB.POSE_X(i-1)
            OB.DETEC_TIME_LOCAL(p) = OB.TIME(i);
            OB.DETEC_X_LOCAL(p) = OB.POSE_X(i);
            OB.DETEC_Y_LOCAL(p) = OB.POSE_Y(i);
            OB.DETEC_Z_LOCAL(p) = OB.POSE_Z(i);
            p = p+1;
        end
    end
    
end

p = 1;
for i = 1:length(OB.TIME)
    if OB.DETECT_X_E(i) ~= 0 && OB.DETECT_X_E(i) ~= OB.DETECT_X_E(i-1)
        OB.DETEC_TIME_E(p) = OB.TIME(i);
        OB.DETEC_X_E(p) = OB.DETECT_X_E(i);
        OB.DETEC_Y_E(p) = OB.DETECT_Y_E(i);
        p = p+1;
    end
end
end