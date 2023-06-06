% p5_5
% 한밭대 20191780 육정훈

n1 = [0:39];
xtilde1 = [5*sin(0.1*pi*[0:19]),zeros(1,20)];
n3 = [0:79];
xtilde3 = [xtilde1, xtilde1];
N3 = length(n3);

[Xtilde3] = dft(xtilde3,N3);
k3 = n3;
mag_Xtilde3 = abs(Xtilde3);
pha_Xtilde3 = angle(Xtilde3)*180/pi;

zei = find(mag_Xtilde3 < 0.00001);

pha_Xtilde3(zei) = zeros(1,length(zei));


subplot(3,1,1); H_s1 = stem(n3,xtilde3);
ylabel('Amplitude'); ntick = [n3(1):5:n3(N3),N3]';axis([-1,N3,-6,6]);

subplot(3,1,2); H_s2 = stem(k3,mag_Xtilde3);
axis([-1,N3,min(mag_Xtilde3),max(mag_Xtilde3)]);
ylabel('Magnitude')
ktick = [k3(1):5:k3(N3),N3]'; set(gca,'XTickMode','manual','XTick',ktick)

subplot(3,1,3); H_s3 = stem(k3,pha_Xtilde3);
xlabel('k'); ylabel('Degrees');
ktick = [k3(1):5:k3(N3),N3]';axis([-1,N3,-180,180]);


