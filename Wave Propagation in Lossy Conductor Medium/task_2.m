% Define parameters
t = -25:0.05:2*pi;  % Time vector
phi = pi;         % Phase
emax = 2;         % Maximum electric field
hmax = 3;         % Maximum magnetic field
w = 4;            % Angular frequency
lampa = 4000;     % Wavelength
sigma = 0.5;      % Conductivity of the medium

% Calculate electric and magnetic fields
ey = emax * exp(-sigma*t) .* cos(w*t - (2*pi/lampa) * phi); % Electric field
hz = hmax * exp(-sigma*t) .* cos(w*t - (2*pi/lampa) * phi); % Magnetic field
m = t * 0; % Placeholder for magnetic field along x-axis
tt = 2*pi:-0.05:-25;

hold on
plot3(m,m,tt,'r', 'LineWidth', 2)
plot3(m,ey,tt,'b', 'LineWidth', 2)
plot3(hz,m,tt,'g', 'LineWidth', 3)
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('wave prpagate in Conductor Medium')
 legend('prpagation direction','electricfield','magnatic field')