% Ex3_24_1
% 한밭대학교 20191780 육정훈

Ts = 0.0002;
n = -25:25;
nTs = n * Ts;
x = exp(-1000 * abs(nTs));
Dt = 0.00005;
t = -0.005:Dt:0.005;
xa = spline(nTs, x, t);

plot(t * 5000, xa); hold on;

stem(n, x); hold off;

error = max(abs(xa - exp(-1000 * abs(t))));
