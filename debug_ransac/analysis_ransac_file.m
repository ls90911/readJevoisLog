function [] = analysis_ransac_file(file_id)
global RANSAC
figure(1)
subplot(2,1,1)
hold on
plot(RANSAC{file_id}.TIME,RANSAC{file_id}.X_PRE);
plot(RANSAC{file_id}.TIME,RANSAC{file_id}.X_MEAS,'*');
plot(RANSAC{file_id}.TIME,RANSAC{file_id}.X_EST);
legend('prediction','measurement','estimation');
ylabel('x[m]')

subplot(2,1,2)
hold on
plot(RANSAC{file_id}.TIME,RANSAC{file_id}.Y_PRE);
plot(RANSAC{file_id}.TIME,RANSAC{file_id}.Y_MEAS,'*');
plot(RANSAC{file_id}.TIME,RANSAC{file_id}.Y_EST);
legend('prediction','measurement','estimation');
ylabel('y[m]')
xlabel('time[s]')

figure(2)
subplot(2,1,1)
hold on
plot(RANSAC{file_id+1}.TIME,RANSAC{file_id+1}.X_PRE);
plot(RANSAC{file_id+1}.TIME,RANSAC{file_id+1}.X_MEAS,'*');
plot(RANSAC{file_id+1}.TIME,RANSAC{file_id+1}.X_EST);
legend('prediction','measurement','estimation');
ylabel('x[m]')

subplot(2,1,2)
hold on
plot(RANSAC{file_id+1}.TIME,RANSAC{file_id+1}.Y_PRE);
plot(RANSAC{file_id+1}.TIME,RANSAC{file_id+1}.Y_MEAS,'*');
plot(RANSAC{file_id+1}.TIME,RANSAC{file_id+1}.Y_EST);
legend('prediction','measurement','estimation');
ylabel('y[m]')
xlabel('time[S]')

end