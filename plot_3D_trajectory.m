function [] = plot_3D_trajectory(plot_num)
global OB m n

figure(plot_num)
hold on
%plot(OB.EST_X(m:n),OB.EST_Y(m:n));
%plot(OB.DETEC_X,OB.DETEC_Y,'*');
plot(OB.PRE_X(m:n),OB.PRE_Y(m:n));
legend('EST','DETEC','PRE');
xlabel('x[m]');
ylabel('y[m]');


end