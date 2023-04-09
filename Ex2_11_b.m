% Ex2_11_b.m

b = [1];
a = [1, -1, 0.9];

[x, n] = stepseq(0, -20, 100);
h = filter(b, a, x);
stem(n, h); title("step response"); xlabel("n"); ylabel("s");
