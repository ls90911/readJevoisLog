function [] = plot_estimation_in_3D(plot_num)
global OB m n
dbstop if error

m1 = 375;
n1 = 440;
m = 1142;
n = 1844; %3688

gate_position_on_map = [0 4 1.5 pi/2;...
    5 5 1.5 0;...
    6 1 1.5 pi/2;...
    1 0 1.5 0];

gate_position_real = [0 5 1.5 pi/2;...
    5 6.5 1.5 0;...
    7 1 1.5 pi/2;...
    1 0 1.5 0];

figure(plot_num)
hold on
z = 1.5*ones(n-m+1);
a = plot3(OB.FILTERED_Y(m:n),OB.FILTERED_X(m:n),z,'Color',[0.9290, 0.6940, 0.1250]);
b = plot3(OB.Y_OT(m:n),OB.X_OT(m:n),z,'Color',[0, 0.4470, 0.7410]);
z = 1.5*ones(n1-m1+1);
c = plot3(OB.DETEC_Y_E(m1:n1),OB.DETEC_X_E(m1:n1),z,'.','Color',[0.8500, 0.3250, 0.0980]);
for i = 1:size(gate_position_real,1)
   plot_gate(gate_position_on_map(i,:),1,plot_num,[0.8500, 0.3250, 0.0980],':');
   plot_gate(gate_position_real(i,:),1,plot_num,[0.8500, 0.3250, 0.0980],'-') 
end
legend([a(1) b(1) c(1)],'Filtered result','Ground truth','Detections');

grid on
axis equal
axis([-1 8 -1 8])
xlabel('y[m]');
ylabel('x[m]');
zlabel('z[m]');
end


