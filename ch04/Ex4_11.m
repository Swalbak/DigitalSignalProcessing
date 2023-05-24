% 한밭대학교 20191780 육정훈

b = [1, 0];
a = [1, -0.9];

[H, w] = freqz(b, a, 100);
magH = abs(H);
phaH = angle(H);

subplot(2, 1, 1); plot(w/pi, magH); title("Mag");
subplot(2, 1, 2); plot(w/pi, phaH/pi); title("Phase");
