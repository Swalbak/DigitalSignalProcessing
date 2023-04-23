% ex3_8

x = rand(1, 11);
n = 0:10;
k = 0:500;
w = (pi/500)*k;
X = x*(exp(-i*pi/500)).^(n'*k);

y = x;
m = n+2;
Y = y * (exp(-i*pi/500)).^(m'*k);
Y_check = (exp(-i*2).^w).*X;
error = max(abs(Y-Y_check));
