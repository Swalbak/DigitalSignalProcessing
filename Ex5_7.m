% Ex5_6
% 한밭대 20191780 육정훈

x = [1,1,1,1, zeros(1,4)]; N = 8; X = dft(x,N);
magX = abs(X);
phaX = angle(X)*180/pi;

