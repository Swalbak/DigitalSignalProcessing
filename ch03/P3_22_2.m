% P3_22_2
% 한밭대학교 20191780 육정훈

Ts = 0.05;
Fs = 1/Ts;
Dt = 0.001;
t = 0:Dt:1;
n = 0:20;
nTs = n*Ts;

theta1 = 0;
x1 = cos(20*pi*nTs+theta1);
y_a1 = x1*sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
subplot(5,1,1); plot(t,y_a1,'LineWidth',1.5); hold on;
plot(nTs,x1,'o'); axis([0 1 -1.2 1.2]);

theta2 = pi/6;
x2 = cos(20*pi*nTs+theta2);
y_a2 = x2*sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
subplot(5,1,2); plot(t,y_a2,'LineWidth',1.5); hold on; axis([0 1 -1.2 1.2])
plot(nTs,x2,'o');

theta3 = pi/4;
x3 = cos(20*pi*nTs+theta3);
y_a3 = x3*sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
subplot(5,1,3); plot(t,y_a3,'LineWidth',1.5); hold on; axis([0 1 -1.2 1.2])
plot(nTs,x3,'o');

theta4 = pi/3;
x4 = cos(20*pi*nTs+theta4);
y_a4 = x4*sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
subplot(5,1,4); plot(t,y_a4,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x4,'o');

theta5 = pi/2;
x5 = cos(20*pi*nTs+theta5);
y_a5 = x5*sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
subplot(5,1,5); plot(t,y_a5,'LineWidth',1.5); axis([0 1 -1.2 1.2]); hold on;
plot(nTs,x5,'o');

