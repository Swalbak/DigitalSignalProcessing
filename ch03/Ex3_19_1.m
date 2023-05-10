% Ex3_19_1
% 한밭대학교 20191780 육정훈

Dt = 0.00005;
t = -0.005:Dt:0.005;
xa = exp(-1000*abs(t));

Ts = 0.0002;
n = -25:1:25;
x = exp(-1000*abs(n * Ts));

K = 500;
k = 0:1:K;
w = pi*k/K;
X = x * exp(-i * n' * w);
X = real(X);
w = [-fliplr(w), w(2:K+1)];
X = [fliplr(X), X(2:K+1)];

subplot(2, 1, 1); stem(n * Ts * 1000, x); axis([-10, 10]);
subplot(2, 1, 2); plot(w/pi, X);
