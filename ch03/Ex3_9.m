% ex3_9

n = 0:100;
x = cos(pi*n/2);
k = -100:100;
w = (pi/100)*k;
X = x * (exp(-i*pi/100)).^(n'*k);

y = exp(i*pi*n/4).*x;
Y = y * (exp(-i*pi/100)).^(n'*k);

subplot(2, 2, 1); plot(w, abs(X));
subplot(2, 2, 2); plot(w, angle(X));
subplot(2, 2, 3); plot(w, abs(Y));
subplot(2, 2, 4); plot(w, angle(Y));
