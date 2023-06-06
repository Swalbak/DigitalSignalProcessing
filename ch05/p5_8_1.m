% p5_8
% 한밭대 20191780 육정훈

n = 0:100
xn = sinc((n-50)/2).^2;
N = length(xn);
Xk = dft(xn,N);
k = 0:N-1;
mag_Xk = abs(Xk);
pha_Xk = angle(Xk)*180/pi;
zei = find(mag_Xk < 0.00001);
pha_Xk(zei) = zeros(1,length(zei));


subplot(2,1,1); H_s1 = stem(k,mag_Xk,'filled');
hold on
subplot(2,1,2); H_s2 = stem(k,pha_Xk,'filled');

xlabel('k'); ylabel('Degrees');
hold on

