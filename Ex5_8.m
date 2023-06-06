% Ex5_8
% 한밭대 20191780 육정훈

n = [0:1:99]; x = cos(0.48*pi*n)+cos(0.52*pi*n);
n1 = [0:1:9] ;y1 = x(1:1:10);

figure;
subplot(2,1,1); stem(n1,y1); title('signal x(n), 0 <= n <= 9');xlabel('n')

Y1 = dft(y1,10); magY1 = abs(Y1(1:1:6));
k1 = 0:1:5 ;w1 = 2*pi/10*k1;
subplot(2,1,2); stem(w1/pi,magY1); title('Samples of DTFT Magnitude');
xlabel('frequency in pi units')

figure;
n2 = [0:1:99]; y2 = [x(1:1:10) zeros(1,90)];
subplot(2,1,1) ; stem(n2,y2); title('signal x(n), 0 <= n <= 9 + 90 zeros');
xlabel('n')
Y2 = dft(y2,100); magY2 = abs(Y2(1:1:51));
k2 = 0:1:50; w2 = 2*pi/100*k2;
subplot(2,1,2); plot(w2/pi,magY2); title('DTFT Magnitude');
xlabel('frequency in pi units')

