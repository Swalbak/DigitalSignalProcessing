% p5_3_2
% 한밭대 20191780 육정훈

n2 = [0:79];
xtilde2 = [xtilde1, zeros(1,40)];
N2 = length(n2);
[Xtilde2] = dft(xtilde2,N2);
k2 = n2;

mag_Xtilde2 = abs(Xtilde2);
pha_Xtilde2 = angle(Xtilde2)*180/pi;
zei = find(mag_Xtilde2 < 1000*eps);
pha_Xtilde2(zei) = zeros(1,length(zei));


subplot(3,1,1); H_s1 = stem(n2,xtilde2);
ntick = [n2(1):5:n2(N2),N2]'; ylabel('xtilde2'); axis([-1,N2,-6,6]);

subplot(3,1,2); H_s2 = stem(k2,mag_Xtilde2);
axis([-1,N2,0,60]);
ylabel('|Xtilde2|')
ktick = [k2(1):5:k2(N2),N2]';

subplot(3,1,3); H_s3 = stem(k2,pha_Xtilde2);
ylabel('Degrees')
ktick = [k2(1):5:k2(N2),N2]'; axis([-1,N2,-200,200]);


