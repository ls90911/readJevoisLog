function [] = plot_attitude(plot_num)
global OB m n

figure(plot_num)
subplot(3,1,1)
hold on
plot(OB.TIME(m:n),OB.PHI_CMD(m:n)/pi*180)
plot(OB.TIME(m:n),OB.PHI(m:n)/pi*180)
legend('cmd','ahrs')
ylabel('phi[deg]')

subplot(3,1,2)
hold on
plot(OB.TIME(m:n),OB.THETA_CMD(m:n)/pi*180)
plot(OB.TIME(m:n),OB.THETA(m:n)/pi*180)
ylabel('theta[deg]')
subplot(3,1,3)
hold on
plot(OB.TIME(m:n),OB.PSI_CMD(m:n)/pi*180)
plot(OB.TIME(m:n),OB.PSI(m:n)/pi*180)
ylabel('psi[deg]')
xlabel('t [s]')

end