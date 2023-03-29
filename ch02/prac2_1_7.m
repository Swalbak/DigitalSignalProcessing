% 한밭대학교 20191780 육정훈

n = 0:100;
x = exp(-0.05 * n) .* sin(0.1 * pi * n + pi / 3);

stem(n, x); title('Prac 2.1.7'); xlabel('n'); ylabel('x(n)');

