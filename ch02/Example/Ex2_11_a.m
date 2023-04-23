% Ex2_11_a.m

b = [1];
a = [1, -1, 0.9];

[x, n] = impseq(0, -20, 100);
h = filter(b, a, x);
stem(n, h); title("impulse response"); xlabel("n"); ylabel("h");
