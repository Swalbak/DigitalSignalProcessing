# prac2_20_2
% 한밭대 20191780 육정훈

n = 0:30;
a = [1];
b = [1, -1];
x = n .* (stepseq(0, 0, 30) - stepseq(10, 0, 30)) + (20 - n) .* (stepseq(10, 0, 30) - stepseq(20, 0, 30));
y = filter(b, a, x);

stem(n, y); title("y"); xlabel("n"); ylabel("y");
