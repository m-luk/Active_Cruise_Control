clear all
close all
clc

% Pojazd Lancer 1.5, 955 kg
A = 2.18; % m^2
cx = 0.3;
f0 = 0.01;
eff = 0.9;
Pmax = 80; %kW
g=9.81;
m = 955; %kg
rd = 0.360; % m
brake_force=7500; %N
start_speed=0; %m/s

%Parametry silnika
Mmax = 147; %Nm
n_Mmax = 4000; %rpm

% Parametry skrzyni biegów
ibi = [3.31 1.91 1.31 0.97 0.81]; % przełożenia
starting_gear = 1; % bieg początkowy
ig=4.53; % przekładnia główna
gear_max=5;

% parametry wzniesienia
angle=0;



run("csv_import");
csv_data = data{:,:};
sz = size(csv_data);
csv_data(sz(1),:) = [];


torque_curve_f = polyfit(csv_data(:,1), csv_data(:,2), 2);

% plot(data(:,1), data(:,2))
% hold on

% 
% x1 = linspace(1000,6500, 200);
% y1 = polyval(f, x1);
% 
% 
% plot(x1, y1);
% hold off


