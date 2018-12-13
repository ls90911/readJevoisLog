function [] = debug_ransac_pos(plot_num)
global OB m n

m1 = 618;
n1 = 799;
% 
% m1 = 1;
% n1 = length(OB.DETEC_X_E);
figure(plot_num)
subplot(2,1,1)
hold on
plot(OB.TIME(m:n),OB.X_OT(m:n));
plot(OB.TIME(m:n),OB.FILTERED_X(m:n));
plot(OB.TIME(m:n),OB.PRE_X(m:n));
plot(OB.DETEC_TIME_E(m1:n1),OB.DETEC_X_E(m1:n1),'.');
xlabel('x [m]')
legend('OT','filtered','prediction','measurement')
grid on
subplot(2,1,2)
hold on
plot(OB.TIME(m:n),OB.Y_OT(m:n));
plot(OB.TIME(m:n),OB.FILTERED_Y(m:n));
plot(OB.TIME(m:n),OB.PRE_Y(m:n));
plot(OB.DETEC_TIME_E(m1:n1),OB.DETEC_Y_E(m1:n1),'.');
xlabel('y [m]')

figure(plot_num+1)
subplot(2,1,1)
hold on
plot(OB.TIME(m:n),OB.RANSAC_X(m:n))
plot(OB.TIME(m:n),OB.RANSAC_VX(m:n))
legend('ransac_x','ransac_vx')
grid on
subplot(2,1,2)
hold on
plot(OB.TIME(m:n),OB.RANSAC_Y(m:n))
plot(OB.TIME(m:n),OB.RANSAC_VY(m:n))
legend('ransac_y','ransac_vy')
grid on
end