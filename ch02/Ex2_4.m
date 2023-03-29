% 한밭대학교 20191780 육정훈

n = [0:15];
x = stepseq(0, 0,  15)-stepseq(10, 0, 15);
[xe, xo, m] = evenodd(x, n);

subplot(1, 3, 1); stem(n, x); title('Rectangular Purse'); xlabel('n'); ylabel('x(n)'); axis([-10, 15, 0, 1.2])
subplot(1, 3, 2); stem(m, xe); title('Even Part'); xlabel('n'); ylabel('x(n)');
subplot(1, 3, 3); stem(m, xo); title('Odd Part'); xlabel('n'); ylabel('x(n)');
