% 한밭대학교 20191780 육정훈

n = -10:10;
x1 = exp(-0.1 * n);
x2 = x1 .* sin(0.3 * n);
x3 = x1 .* cos(0.3 * n);
x4 = 0.3 * n * 180 / pi

subplot(2, 2, 1), stem(n, x2); title('Imag'); xlabel('n'); ylabel('x(n)');
subplot(2, 2, 2), stem(n, x3); title('Real'); xlabel('n'); ylabel('x(n)');
subplot(2, 2, 3), stem(n, x1); title('Magn'); xlabel('n'); ylabel('x(n)');
subplot(2, 2, 4), stem(n, x4); title('Phase'); xlabel('n'); ylabel('x(n)');
