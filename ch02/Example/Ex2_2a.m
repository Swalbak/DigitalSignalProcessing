
x = [1 : 7, 6 : -1 : 1];
n = [-2: 10];

[x1, n1] = sigshift(x, n, 5);
[x2, n2] = sigshift(x, n, -4);
[x3, n3] = sigadd(2*x1, n1, -3*x2, n2, 1);

stem(n3, x3); title('Ex 2.2a'); xlabel('n'); ylabel('x(n)');
