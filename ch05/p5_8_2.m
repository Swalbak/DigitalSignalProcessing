% p5_8
% 한밭대 20191780 육정훈

[X,w] = freqz(xn,1,1000,'whole');
mag_X = abs(X); pha_X = angle(X)*180/pi;
Dw = (2*pi)/N;

subplot(2,1,1); plot(w/Dw,mag_X); grid
hold off
subplot(,1,2); plot(w/Dw,pha_X); grid
hold off

