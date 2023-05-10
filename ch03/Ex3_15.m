% Ex3_15
a = [1, -0.8];
b = 1;
n = 0:100;
x = cos(0.05 * pi * n);
y = filter(b, a, x);

subplot(2, 1, 1); stem(n, x);
subplot(2, 1, 2); stem(n, y);

