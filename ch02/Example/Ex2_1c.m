% 한밭대학교 20191780 육정훈
% Ex2_1c

n = 0:50;

w = randn(size(n));

x = cos(0.04 * pi * n) + 0.2 * w;

stem(n, x); title('Ex 2.1c');
xlabel('n'); ylabel('x(n)');
