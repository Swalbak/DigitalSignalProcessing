% Ex5_8_1
% 한밭대 20191780 육정훈

subplot(2,1,1); stem(n,x);
title('signal x(n), 0 <= n <= 99'); xlabel('n')
X = dft(x,100); magX = abs(X(1:1:51));
k = 0:1:50; w = 2*pi/100*k;
subplot(2,1,2); plot(w/pi,magX); title('DTFT Magnitude');
xlabel('frequency in pi units')

