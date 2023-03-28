n = [-10 : 9];
x = [5, 4, 3, 2, 1];

x1 = x' * ones(1, 4);
x2 = (x1(:))';

stem(n, x2); title('Ex 2.1d');
xlabel('n'); ylabel('x(n)');
