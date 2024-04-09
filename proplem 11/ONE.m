% by yassa mazhar
omega = 2*pi*10^6;% Angular frequency
k = 6; % Wave number
T = 2*pi/omega; % Period (s)
lambda = 2*pi/k; % Wavelength (m)
v_ph = omega/k; % Phase velocity (m/s)

% Plotting wave

x = linspace(0, lambda, 1000); % Range of x values for one wavelength
E_at_t0 = 25*sin(-6*x); % E field at t = 0


subplot(2,1,1);
plot(x, E_at_t0, 'b');
xlabel('Distance (m)');
ylabel('Electric Field (V/m)');
title('Wave at t = 0');
grid on;
hold on;
line([0, lambda], [0, 0], 'Color', 'r', 'LineStyle', '--'); % Wavelength lambda
subplot(2,1,2);
t = linspace(0, T, 1000); % Range of t values for one period
E_at_x0 = 25*sin(omega*t); % E field at x = 0
plot(t, E_at_x0, 'b');
xlabel('Time (s)');
ylabel('Electric Field (V/m)');
title('Wave at x = 0');
grid on;
hold on;
line([0, T], [0, 0], 'Color', 'r', 'LineStyle', '--'); % Period T
