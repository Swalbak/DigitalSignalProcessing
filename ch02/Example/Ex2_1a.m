% Ex2_1a

[x1, n1] = impseq(-2, -5, 5)
[x2, n2] = impseq(4, -5, 5)

n3 = [-5:5]
x3 = 2 * x1 - x2

stem(n3, x3); title('Ex 2.1a'); xlabel('n'); ylabel('x(n)');

