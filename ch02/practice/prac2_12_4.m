% prac2_12_4.m

n = 0:100; x = sqrt(10)*randn(1,length(n));
[y1,ny1] = sigshift(y,ny,-1); [xs,nxs] = sigshift(x,n,-1); y2 = cumsum(xs);
ny2 = nxs - 5; [diff,ndiff] = sigadd(y1,ny1,-y2,ny2);

subplot(2, 1, 1); stem(ndiff, diff); title("signal1"); xlabel("n"); ylabel("y");
