n = -200:200;
x = 5 * (cos(0.49 * pi * n) + cos(0.51 * pi * n));

stem(n, x); title('Prac 2.1.5'); xlabel('n'); ylabel('x(n)');

