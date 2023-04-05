% ex2_7.m

n = -5:50;
x = stepseq(0, -5, 50) - stepseq(10, -5, 50);
subplot(1, 3, 1); stem(n, x); title("Input sequence");  xlabel("n"); ylabel("x");

n2 = -5:50;
h = (0.9) .^ n2 .* stepseq(0, -5, 50);
subplot(1, 3, 2); stem(n2, h); title("Impulse Response");  xlabel("n"); ylabel("h");

[y, ny] = conv_m(x, n, h, n2);
subplot(1, 3, 3); stem(ny, y); title("conv");  xlabel("n"); ylabel("y");

