% Ex3_21

Ts = 0.0002;
n = -25:1:25;
Fs = 1/Ts;
nTs = n*Ts;
x = exp(-1000*abs(nTs));
Dt = 0.00005;
t = -0.005:Dt:0.005;
xa = x * sinc(Fs*(ones(length(n), 1)*t-nTs'*ones(1, length(t))));

plot(t * 5000, xa); hold on;

stem(n, x); hold off;

error = max(abs(xa - exp(-1000 * abs(t))));

