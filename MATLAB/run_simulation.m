%% ==========================================================
% Digital Flight Control Computer Simulation
% ===========================================================

clc;
clear;
close all;

disp('==========================================');
disp('Digital Flight Control Computer Simulation');
disp('==========================================');

% Model name (change if your .slx filename is different)
modelName = 'sensor_simulation';

% Open model
load_system(modelName);

% Run simulation
disp('Running simulation...');
simOut = sim(modelName);

disp('Simulation completed successfully.');

% Save workspace
save('simulation_results.mat');

disp('Results saved as simulation_results.mat');