% ex3.7

x1 = rand(1, 11);
x2 = rand(1, 11);
n = 0:10;
alpha = 2;
beta = 3;
k = 0:500;
w = (pi/500)*k;
x = alpha*x1 + beta*x2;
X = x * (exp(-i*pi/500)).^(n'*k);

X1 = x1 * (exp(-i*pi/500)).^(n'*k);
X2 = x2 * (exp(-i*pi/500)).^(n'*k);

error = max(abs(X-(alpha*X1 + beta*X2)));
