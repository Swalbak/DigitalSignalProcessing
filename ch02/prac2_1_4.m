% 한밭대학교 20191780 육정훈

n = -30:30;
x1 = stepseq(-20, -30, 30) - stepseq(10, -30, 30);
x = exp(0.1 * n) .* x1;

stem(n, x); title('Prac 2.1.3'); xlabel('n'); ylabel('x(n)');

