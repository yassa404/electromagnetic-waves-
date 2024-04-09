% yassa mazhar fayez

t=0:0.05:2*pi;
phi=pi;
emax=2;
hmax=3;
w =4;
lampa=4000;
ey=emax*cos(w*t-(2*pi/lampa)*phi);
hz=hmax*cos(w*t-(2*pi/lampa)*phi);
m=t*0;
Xline = animatedline('LineWidth',3,'Color','r');
Yline = animatedline('LineWidth',3,'Color','b');
zline = animatedline('LineWidth',3,'Color','g');
axis([0 2*pi -2 2 -3 3])
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('wave prpagate')
 for i=1:length(t)
     addpoints(Xline ,t(i),0,0)
     addpoints(Yline ,t(i),ey(i),0)
     addpoints(zline ,t(i),0,hz(i))
     drawnow
     pause (0.02)
     hold on
 
 end 
figure
subplot(3,2,1)
hold on
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('prpagate at (x) electricfield at (y) magnatic field(z)');
 plot3(t,m,m,'r', 'LineWidth', 3)
 plot3(t,ey,m,'b', 'LineWidth', 3)
 plot3(t,m,hz,'g', 'LineWidth', 3)
 legend('prpagation direction','electricfield','magnatic field')

subplot(3,2,2)
hold on
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('prpagate at (x) electricfield at (z) magnatic field(y)');
 plot3(t,m,m,'r', 'LineWidth', 3)
plot3(t,m,ey,'b', 'LineWidth', 3)
 plot3(t,hz,m,'g', 'LineWidth', 3)
 legend('prpagation direction','electricfield','magnatic field')

subplot(3,2,3)
hold on
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('prpagate at (z) electricfield at (x) magnatic field(y)');
plot3(m,m,t,'r', 'LineWidth', 3)
plot3(ey,m,t,'b', 'LineWidth', 3)
plot3(m,hz,t,'g', 'LineWidth', 3)
legend('prpagation direction','electricfield','magnatic field')

subplot(3,2,4)
hold on
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('prpagate at (z) electricfield at (y) magnatic field(x)');
plot3(m,m,t,'r', 'LineWidth', 3)
plot3(m,ey,t,'b', 'LineWidth', 3)
plot3(hz,m,t,'g', 'LineWidth', 3)
legend('prpagation direction','electricfield','magnatic field')

subplot(3,2,5)
hold on
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('prpagate at (y) electricfield at (z) magnatic field(x)');
plot3(m,t,m,'r', 'LineWidth', 3)
plot3(m,t,ey,'b', 'LineWidth', 3)
plot3(hz,t,m,'g', 'LineWidth', 3)
legend('prpagation direction','electricfield','magnatic field')

subplot(3,2,6)
hold on
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
title('prpagate at (y) electricfield at (x) magnatic field(z)');
plot3(m,t,m,'r', 'LineWidth', 3)
plot3(ey,t,m,'b', 'LineWidth', 3)
plot3(m,t,hz,'g', 'LineWidth', 3)
legend('prpagation direction','electricfield','magnatic field')
 
 
