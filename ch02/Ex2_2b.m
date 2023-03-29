% 한밭대학교 20191780 육정훈

x = [1 : 7, 6 : -1 : 1];
n = [-2: 10];

[x1, n1] = sigshift(x, n, -3);
[x1, n1] = sigfold(x1, n1);

[x2, n2] = sigshift(x, n, 2);
[x2, n2] = sigmult(x, n, x2, n2, 1);

[x3, n3] = sigadd(x1, n1, x2, n2, 1);

stem(n3, x3); title('Ex 2.2b'); xlabel('n'); ylabel('x(n)');
