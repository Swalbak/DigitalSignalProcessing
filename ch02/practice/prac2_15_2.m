% prac2_15_2.m

n1 = -3:3;
x = [1 1 0 1 1];
n2 = -3:0;
h = [1 -2 -3 4];
[y,n] = conv_m(x,n1,h,n2);

subplot(2, 1, 1); stem(n, y); title("signal1"); xlabel("n"); ylabel("y");
