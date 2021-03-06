function [] = plot_trajectory_vs_time(plot_num)
global OB m n

figure(plot_num)
subplot(2,1,1)
plot(OB.TIME(m:n),OB.FILTERED_X(m:n))
hold on
plot(OB.DETEC_TIME_E,OB.DETEC_X_E,'*');

ylabel('x[m]')
hold on
subplot(2,1,2)
plot(OB.TIME(m:n),OB.FILTERED_Y(m:n))
hold on
plot(OB.DETEC_TIME_E,OB.DETEC_Y_E,'*');
ylabel('y[m]')
xlabel('t [s]')

end