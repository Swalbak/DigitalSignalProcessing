% Ex3_22
% 한밭대학교 20191780 육정훈

Ts = 0.001;
n = -5:1:5;
nTs = n * Ts;
Fs = 1/Ts;
x = exp(-1000 * abs(nTs));
Dt = 0.00005;
t = -0.005:Dt:0.005;
xa = x * sinc(Fs * (ones(length(n), 1)*t - nTs'*ones(1, length(t))));

plot(t * 1000, xa); hold on;

stem(n, x); hold off;

error = max(abs(xa - exp(-1000 * abs(t))));
