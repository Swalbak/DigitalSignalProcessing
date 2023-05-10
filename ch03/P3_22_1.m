% P3_22_1
% 한밭대학교 20191780 육정훈

Ts = 0.05;
Fs = 1/Ts;
Dt = 0.001;
t = 0:Dt:1;
n = 0:20;
nTs = n*Ts;

theta1 = 0;
x_a1 = cos(20*pi*t+theta1);
x1 = cos(20*pi*nTs+theta1);
subplot(5,1,1); plot(t,x_a1,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x1,'o');

theta2 = pi/6;
x_a2 = cos(20*pi*t+theta2);
x2 = cos(20*pi*nTs+theta2);
subplot(5,1,2); plot(t,x_a2,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x2,'o');

theta3 = pi/4;
x_a3 = cos(20*pi*t+theta3);
x3 = cos(20*pi*nTs+theta3);
subplot(5,1,3); plot(t,x_a3,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x3,'o');

theta4 = pi/3;
x_a4 = cos(20*pi*t+theta4);
x4 = cos(20*pi*nTs+theta4);
subplot(5,1,4); plot(t,x_a4,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x4,'o');

theta5 = pi/2;
x_a5 = cos(20*pi*t+theta5);
x5 = cos(20*pi*nTs+theta5);
subplot(5,1,5); plot(t,x_a5,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x5,'o');

