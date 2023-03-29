% 한밭대학교 20191780 육정훈

n = -5:15;
x = 3*impseq(-2, -5, 15) + 2*impseq(0, -5, 15) - impseq(3, -5, 15) + 5*impseq(7, -5, 15);

stem(n, x); title('prac2.1.1'); xlabel('n'); ylabel('x(n)'); axis([-5, 15]);

