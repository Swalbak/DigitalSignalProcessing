n = -50:50;
x = sin(0.125 * pi * n);
[y, m] = dnsample(x, n, 4);

subplot(1, 2, 1); stem(n, x); title('sin(0.125*pi*n)'); xlabel('n'); ylabel('x(n)');
subplot(1, 2, 2); stem(m, y); title('dnsampled'); xlabel('n'); ylabel('y(n)');

