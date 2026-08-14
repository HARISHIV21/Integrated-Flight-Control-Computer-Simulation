%% ==========================================================
% RMSE Calculation Script
% Digital Flight Control Computer Simulation
% ===========================================================

clc;

disp('=====================================');
disp('RMSE Performance Evaluation');
disp('=====================================');

% Pitch
pitch_rmse = sqrt(mean((true_pitch - estimated_pitch).^2));

% Roll
roll_rmse = sqrt(mean((true_roll - estimated_roll).^2));

% Yaw
yaw_rmse = sqrt(mean((true_yaw - estimated_yaw).^2));

% Altitude
altitude_rmse = sqrt(mean((true_altitude - estimated_altitude).^2));

% Airspeed
airspeed_rmse = sqrt(mean((true_airspeed - estimated_airspeed).^2));

fprintf('\n');
fprintf('-------------------------------------\n');
fprintf('Root Mean Square Error (RMSE)\n');
fprintf('-------------------------------------\n');

fprintf('Pitch RMSE     : %.6f\n',pitch_rmse);
fprintf('Roll RMSE      : %.6f\n',roll_rmse);
fprintf('Yaw RMSE       : %.6f\n',yaw_rmse);
fprintf('Altitude RMSE  : %.6f\n',altitude_rmse);
fprintf('Airspeed RMSE  : %.6f\n',airspeed_rmse);

fprintf('-------------------------------------\n');

%% Save Results

rmse.pitch = pitch_rmse;
rmse.roll = roll_rmse;
rmse.yaw = yaw_rmse;
rmse.altitude = altitude_rmse;
rmse.airspeed = airspeed_rmse;

save('rmse_results.mat','rmse');

disp('RMSE results saved successfully.');