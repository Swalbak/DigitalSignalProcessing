n = -100:100;

x1 = cos(0.1 * pi * n);
x2 = sin(0.1 * pi * n);

subplot(1, 2, 1); stem(n, x2); title('Imag'); xlabel('n'); ylabel('x(n)');
subplot(1, 2, 2); stem(n, x1); title('real'); xlabel('n'); ylabel('x(n)');


