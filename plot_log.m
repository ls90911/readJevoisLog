function [] = plot_log()
global OB

%plot_3D_trajectory(3);
%plot_communication(6)
debug_ransac_pos(1)
%debug_ransac_vel(4)
%plot_trajectory_vs_time(6)

% plot_detection_local_frame(1);
% 
% plot_detection_earth_frame(2);

%plot_detect_error(1)

plot_velocity(3)
%calibrate_camera(8);
%plot_3d_trajectory(3);
plot_command(51)
%plot_PID_term(6)
%Rcalibrate_camera_NN(1)
debug_cascade_controller(5);
 %map_square_area_with_distance(1)
end

