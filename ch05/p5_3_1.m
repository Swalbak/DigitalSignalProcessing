% p5_3_1
% 한밭대 20191780 육정훈

n1 = [0:39];
xtilde1 = [5*sin(0.1*pi*[0:19]),zeros(1,20)];
N1 = length(n1);
[Xtilde1] = dft(xtilde1,N1);
k1 = n1;
mag_Xtilde1 = abs(Xtilde1);
pha_Xtilde1 = angle(Xtilde1)*180/pi;
zei = find(mag_Xtilde1 < 1000*eps);
pha_Xtilde1(zei) = zeros(1,length(zei));


subplot(3,1,1); H_s1 = stem(n1,xtilde1);
axis([-1,N1,-6,6]);
ntick = [n1(1):2:n1(N1),N1]'; ylabel('Amplitude');

subplot(3,1,2); H_s2 = stem(k1,mag_Xtilde1);
axis([-1,N1,0,max(mag_Xtilde1)+10]);
ylabel('Magnitude');
ktick = [k1(1):2:k1(N1),N1]';

subplot(3,1,3); H_s3 = stem(k1,pha_Xtilde1);
ylabel('Degrees');
ktick = [k1(1):2:k1(N1),N1]'; axis([-1,N1,-200,200]);


