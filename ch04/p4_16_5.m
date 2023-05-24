w = [0:0.1:pi];
h = 1 - 1/2 * exp(-i * w);

magH = abs(h);
angH = angle(h);

subplot(2, 1, 1); plot(w/pi, magH);
subplot(2, 1, 2); plot(w/pi, angH);
