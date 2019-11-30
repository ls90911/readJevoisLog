function [] = plot_gate_number(plot_num)
global OB m n

figure(plot_num)
subplot(1,1,1)
hold on
plot(OB.TIME(m:n),OB.GATE_NUM(m:n))
ylabel('phi[deg]')
xlabel('t [s]')

end