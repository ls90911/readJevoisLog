function [] = plot_optitrack(plot_num)
global OB m n

m = 1;
n = length(OB.TIME);


figure(plot_num)
subplot(2,1,1)
hold on
plot(OB.TIME(m:n),OB.X_OT(m:n));
ylabel('x [m]')
grid on
subplot(2,1,2)
hold on
plot(OB.TIME(m:n),OB.Y_OT(m:n));
ylabel('y [m]')
xlabel('time [s]')
grid on

end