% Ex3_23
% 한밭대학교 20191780 육정훈

Ts = 0.0002;
n = -25:1:25;
nTs = n * Ts;
x = exp(-1000 * abs(nTs));

subplot(2, 2, 1); stairs(nTs * 1000, x);
subplot(2, 2, 2); stairs(nTs * 1000, x); hold on;
stem(n * Ts * 1000, x); hold off;

Ts = 0.001;
n = -5:5;
nTs = n * Ts;
x = exp(-1000 * abs(nTs));

subplot(2, 2, 3); plot(nTs * 1000, x);
subplot(2, 2, 4); plot(nTs * 1000, x); hold on;
stem(n * Ts * 1000, x); hold off;
