# prac2_20_3
% 한밭대 20191780 육정훈

n = 0:120;
a = [1];
b = [1, -1];
x = sin(pi * n / 25) .* (stepseq(0, 0, 120) - stepseq(100, 0, 120));
y = filter(b, a, x);

stem(n, y); title("y"); xlabel("n"); ylabel("y");
