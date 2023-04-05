% prac2_11_5.m

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));

[y1,ny1] = dnsample(x1,n,2);
[y2,ny2] = dnsample(x2,n,2);
xs = x1 + x2;
[y,ny] = dnsample(xs,n,2);

subplot(2, 1, 1); stem(ny, y); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(ny2, y1 + y2); title("signal2"); xlabel("n"); ylabel("y");
