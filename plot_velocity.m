function [] = plot_velocity(plot_num)
global OB m n

figure(plot_num)
subplot(2,1,1)
hold on
plot(OB.TIME,OB.VX_OT);
plot(OB.TIME,OB.VX_FILTERED);
xlabel('vx [m/s]')
subplot(2,1,2)
hold on
plot(OB.TIME,OB.VY_OT);
plot(OB.TIME,OB.VY_FILTERED);
xlabel('vy [m/s]')


end