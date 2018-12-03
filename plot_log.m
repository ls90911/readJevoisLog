function [] = plot_log()
global OB

%plot_3D_trajectory(3);
plot_communication(6)

plot_trajectory_vs_time(4)

plot_detection_local_frame(1);

plot_detection_earth_frame(2);
end

