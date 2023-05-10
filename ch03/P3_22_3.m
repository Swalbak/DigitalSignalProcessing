% P3_22_3
% 한밭대학교 20191780 육정훈

Ts = 0.05;
Fs = 1/Ts;
Dt = 0.001;
t = 0:Dt:1;
n = 0:20;
nTs = n*Ts;

theta1 = 0;
x1 = cos(20*pi*nTs+theta1);
y_a1 = spline(nTs,x1,t);
subplot(5,1,1); plot(t,y_a1,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x1,'o');

theta2 = pi/6;
x2 = cos(20*pi*nTs+theta2);
y_a2 = spline(nTs,x2,t);
subplot(5,1,2); plot(t,y_a2,'LineWidth',1.5); hold on; axis([0 1 -1.2 1.2]);
plot(nTs,x2,'o');

theta3 = pi/4;
x3 = cos(20*pi*nTs+theta3);
y_a3 = spline(nTs,x3,t);
subplot(5,1,3); plot(t,y_a3,'LineWidth',1.5); hold on; axis([0 1 -1.2 1.2]);
plot(nTs,x3,'o');

theta4 = pi/3;
x4 = cos(20*pi*nTs+theta4);
y_a4 = spline(nTs,x4,t);
subplot(5,1,4); plot(t,y_a4,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x4,'o');

theta5 = pi/2;
x5 = cos(20*pi*nTs+theta5);
y_a5 = spline(nTs,x5,t);
subplot(5,1,5); plot(t,y_a5,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x5,'o');
