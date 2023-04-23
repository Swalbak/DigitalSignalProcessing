% prac2_19_1.m
% 한밭대학교 20191780 육정훈

a = [1, -0.5, 0.25];
b = [1, 2, 0, 1];
n = 0:100;

h = filter(b, a, impseq(0, 0, 100));
stem(n, h); title("impseq"); xlabel("n"); ylabel("h");
