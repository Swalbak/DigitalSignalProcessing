% prac2_19_3.m
% 한밭대 20191780 육정훈

a = [1, -0.5, 0.25];
b = [1, 2, 0, 1];
n = 0:100;
x = 5 + (3 * cos(0.2 * pi * n) + 4 * sin(0.6 * pi * n));
y = filter(b, a, x);
stem(n, y); title("y"); xlabel("n"); ylabel("y"); axis([-10, 100]);
