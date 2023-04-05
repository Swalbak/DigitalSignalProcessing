% ex2_9.m

x = [3, 11, 7, 0, -1, 4, 2];
h = [2, 3, 0, -5, 2, 1];
x_n = -3:3;
h_n = -1:4;

[y, y_n] = conv_m(x, x_n, h, h_n);
stem(y_n, y); xlabel("n"); ylabel("y(n)"); title("conv");
