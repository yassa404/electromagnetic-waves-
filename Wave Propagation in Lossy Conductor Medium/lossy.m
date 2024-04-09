
t = -25:0.05:2*pi;  
phi = pi;          
emax = 2;           
hmax = 3;           
w = 4;              
lampa = 4000;     
sigma = 0.1;        


ey = emax * exp(-sigma*t) .* cos(w*t - (2*pi/lampa) * phi);
hz = hmax * exp(-sigma*t) .* cos(w*t - (2*pi/lampa) * phi); 


[x, y] = meshgrid(-2:0.5:2, -2:0.5:2);
z = -2; 

figure;
hold on;
surf(x, y, z*ones(size(x)) );
plot3(z*ones(size(t)),t, ey) ; 
plot3(hz,t, z*ones(size(t)));
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('Wave Propagation in Lossy Conductor Medium');
legend('Propagation direction', 'Electric field', 'Magnetic field');
hold off;