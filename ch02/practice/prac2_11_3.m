% prac2_11_3.m

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));

[x11,nx11] = sigshift(x1,n,2);
x11 = 1/2*x11;
[x12,nx12] = sigshift(x1,n,3);
x12 = -1/3*x12;
[x13,nx13] = dnsample(x1,n,2);
[x14,nx14] = sigmult(x12,nx12,x13,nx13, 1);
[x15,nx15] = sigadd(x11,nx11,x14,nx14, 1);
[y1,ny1] = sigadd(x1,n,x15,nx15, 1);
[x21,nx21] = sigshift(x2,n,2);

x21 = 1/2*x21; [x22,nx22] = sigshift(x2,n,3);
x22 = -1/3*x22; [x23,nx23] = dnsample(x2,n,2);
[x24,nx24] = sigmult(x22,nx22,x23,nx23, 1);
[x25,nx25] = sigadd(x21,nx21,x24,nx24, 1);
[y2,ny2] = sigadd(x2,n,x25,nx25, 1);
xs = x1 + x2;
[xs1,nxs1] = sigshift(xs,n,2);
xs1 = 1/2*xs1; [xs2,nxs2] = sigshift(xs,n,3);
xs2 = -1/3*xs2;
[xs3,nxs3] = dnsample(xs,n,2);
[xs4,nxs4] = sigmult(xs2,nxs2,xs3,nxs3, 1);
[xs5,nxs5] = sigadd(xs1,nxs1,xs4,nxs4, 1);
[y,ny] = sigadd(xs,n,xs5,nxs5, 1);

subplot(2, 1, 1); stem(ny, y); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(ny2, y1 + y2); title("signal2"); xlabel("n"); ylabel("y");
