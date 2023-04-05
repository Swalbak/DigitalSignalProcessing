% prac2_11_1.m
% 한밭대 20191780 육정훈

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));
u = stepseq(0, 0, 100);

a1 = 3; a2 = 2;
y1 = u .* ((a1 * x1) + (a2 * x2));
y2 = a1 * (x1 .* u) + a2 * (x2 .* u);

subplot(2, 1, 1); stem(n, y1); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(n, y2); title("signal2"); xlabel("n"); ylabel("y");
