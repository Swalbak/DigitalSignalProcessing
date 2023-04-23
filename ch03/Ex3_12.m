% ex3_12
% 한밭대학교 20191780 육정훈

n = -5:10;
x = sin(pi*n/2);
k = -100:100;
w = (pi/100)*k;
X = x * (exp(-i*pi/100)) .^ (n'*k);

[xe, xo, m] = evenodd(x, n);
XE = xe * (exp(-i*pi/100)) .^ (m'*k);
XO = xo * (exp(-i*pi/100)) .^ (m'*k);

r = real(X);
error1 = max(abs(XE - r));
im = imag(X);
error2 = max(abs(XO - im));

subplot(2, 2, 1); plot(w, real(XE));
subplot(2, 2, 2); plot(w, imag(XO));
subplot(2, 2, 3); plot(w, r);
subplot(2, 2, 4); plot(w, im);
