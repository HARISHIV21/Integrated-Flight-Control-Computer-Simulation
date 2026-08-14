%% Plot Estimated vs True States

figure;

subplot(3,2,1)
plot(true_pitch,'b')
hold on
plot(estimated_pitch,'r')
title('Pitch')
legend('True','Estimated')

subplot(3,2,2)
plot(true_roll,'b')
hold on
plot(estimated_roll,'r')
title('Roll')
legend('True','Estimated')

subplot(3,2,3)
plot(true_yaw,'b')
hold on
plot(estimated_yaw,'r')
title('Yaw')
legend('True','Estimated')

subplot(3,2,4)
plot(true_altitude,'b')
hold on
plot(estimated_altitude,'r')
title('Altitude')
legend('True','Estimated')

subplot(3,2,5)
plot(true_airspeed,'b')
hold on
plot(estimated_airspeed,'r')
title('Airspeed')
legend('True','Estimated')

sgtitle('EKF State Estimation Performance')