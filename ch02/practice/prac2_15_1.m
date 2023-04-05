% prac2_15_1.m
% 한밭대 20191780 육정훈

n1 = -3:3;
x = [2 -4 5 3 -1 -2 6];
n2 = -1:3; h = [1 -1 1 -1 1];

[y,n] = conv_m(x,n1,h,n2);

subplot(2, 1, 1); stem(n, y); title("signal1"); xlabel("n"); ylabel("y");
