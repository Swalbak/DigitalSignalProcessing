% Ex3_16
a = [1, -1.76, 1.18, -0.28];
b = [0.018, 0.054, 0.054, 0.018];
m = 0 : length(b)-1;
l = 0:length(a)-1;
K = 500;
k = 0:1:K;
w = pi*k/K;
num = b * exp(-i * m' * w);
den = a * exp(-i * l' * w);
H = num ./ den;
magH = abs(H);
angH = angle(H);

subplot(2, 1, 1); plot(w, magH);
subplot(2, 1, 2); plot(w/pi, angH/pi);

