% prac2_12_5.m
% 한밭대 20191780 육정훈

n = 0:100; x = sqrt(10)*randn(1,length(n));
[y,ny] = dnsample(x,n,2);
[y1,ny1] = sigshift(y,ny,1); [xs,nxs] = sigshift(x,n,1);
[y2,ny2] = dnsample(xs,nxs,2); [diff,ndiff] = sigadd(y1,ny1,-y2,ny2);


