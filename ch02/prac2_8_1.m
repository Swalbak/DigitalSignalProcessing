n = 0 : 10;
x = stepseq(0, 0, 10);
x1, m = dnsample(x, n, 2);

subplot(1, 2, 1); stem(n, x); title('Imag'); xlabel('n'); ylabel('x(n)');
subplot(1, 2, 2); stem(m, x1); title('Imag'); xlabel('n'); ylabel('x(n)');

