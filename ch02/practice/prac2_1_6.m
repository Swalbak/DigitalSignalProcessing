n = -200:200;
x = 2 * sin(0.01 * pi * n) .* cos(0.5 * pi * n);

stem(n, x); title('Prac 2.1.6'); xlabel('n'); ylabel('x(n)');

