% Ex5_9
% 한밭대 20191780 육정훈

n = 0:10; x = 10*(0.8) .^ n; y = x(mod(-n,11)+1)

X = dft(x,11); Y = dft(y,11);
subplot(2,2,1); stem(n,real(X));
title('Real{DFT[x(n)]}'); xlabel('k');
subplot(2,2,2); stem(n,imag(X));
title('Imag{DFT[x(n)]}'); xlabel('k');
subplot(2,2,3); stem(n,real(Y));
title('Real{DFT[x((-n))11]}'); xlabel('k');
subplot(2,2,4); stem(n,imag(Y));
title('Imag{DFT[x((-n))11]}'); xlabel('k');

