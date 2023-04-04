% prac2_9.m
n1 = 0:20;
x = (0.9).^n1;

[xr, nr] = sigfold(x, n1);
[rxx, nrxx] = conv_m(x, n1, xr, nr);

figure(1); stem(nrxx, rxx); title("rxx(l)");

n2 = -20:0;
y = (0.8).^(-n2);
[rxy, nrxy] = conv_m(x, n1, y, n2);
figure(2); stem(nrxy, rxy); title("rxy(l)");

