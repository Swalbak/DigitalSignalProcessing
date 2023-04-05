% prac2_12_3.m
% 한밭대 20191780 육정훈

n = 0:100; x = sqrt(10)*randn(1,length(n));
[x1,nx1] = sigshift(x,n,2);
x1 = 1/2*x1;
[x2,nx2] = sigshift(x,n,3);
x2 = -1/3*x2;
[x3,nx3] = dnsample(x,n,2);
[x4,nx4] = sigmult(x2,nx2,x3,nx3);
[x5,nx5] = sigadd(x1,nx1,x4,nx4);
[y,ny] = sigadd(x,n,x5,nx5);
[y1,ny1] = sigshift(y,ny,1);
[xs,nxs] = sigshift(x,n,1);
[xs1,nxs1] = sigshift(xs,nxs,2); xs1 = 1/2*xs1;
[xs2,nxs2] = sigshift(xs,nxs,3); xs2 = -1/3*xs2;
[xs3,nxs3] = dnsample(xs,nxs,2); [xs4,nxs4] = sigmult(xs2,nxs2,xs3,nxs3);
[xs5,nxs5] = sigadd(xs1,nxs1,xs4,nxs4); [y2,ny2] = sigadd(xs,nxs,xs5,nxs5);
[diff,ndiff] = sigadd(y1,ny1,-y2,ny2);


