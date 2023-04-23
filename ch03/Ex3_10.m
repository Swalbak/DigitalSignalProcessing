%ex3_10

n = -5:10;
x = rand(1, length(n)) + i*rand(1, length(n));
k = -100:100;
w = (pi/100) * k;
X = x * (exp(-i*pi/100)).^(n'*k);
y = conj(x);
Y = y * (exp(-i*pi/100)) .^ (n'*k);

error = max(abs(Y - conj(fliplr(X))));
