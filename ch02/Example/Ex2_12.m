% Ex2_12
% 한밭대 20191780 육정훈

b = [1];
a = [1, -0.9];

n = -5:50;
x = stepseq(0, -5, 50) - stepseq(10, -5, 50);

y = filter(b, a, x);
stem(n, y); title("conv"); xlabel("n"); ylabel("y");
