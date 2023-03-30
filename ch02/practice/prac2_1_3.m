n = -20:20;
x = 10 * stepseq(0, -20, 20) - 5 * stepseq(5, -20, 20) - 10 * stepseq(10, -20, 20) + 5 * stepseq(15, -20, 20);

stem(n, x); title('Prac 2.1.3'); xlabel('n'); ylabel('x(n)');

