% Ex5_10
% 한밭대 20191780 육정훈

X = dft(x,11); Xec = dft(xec,11); Xoc = dft(xoc,11);
subplot(2,2,1); stem(n,real(X)); axis([-0.5,10.5,-5,50])
title('Real{DFT[x(n)]}'); xlabel('k');
subplot(2,2,2); stem(n,imag(X)); axis([-0.5,10.5,-20,20])
title('Imag{DFT[x(n)]}'); xlabel('k');
subplot(2,2,3); stem(n,real(Xec)); axis([-0.5,10.5,-5,50])
title('DFT[xec(n)]'); xlabel('k');
subplot(2,2,4); stem(n,imag(Xoc)); axis([-0.5,10.5,-20,20])
title('DFT[xoc(n)]'); xlabel('k');

