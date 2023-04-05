% prac2_15_3.m

n1 = -2:5;
[x11,nx11] = stepseq(-1,-2,5);
[x12,nx12] = stepseq(4,-2,5);
[x13,n13] = sigadd(x11,nx11,-x12,nx12);
x14 = 0.25 .^ -n1; n14 = n1;
x = x14 .* x13;
n2 = 0:6;
[h11,nh11] = stepseq(0,0,6);
[h12,nh12] = stepseq(5,0,6);
h=h11-h12;
[y,n] = conv_m(x,n1,h,n2);

subplot(2, 1, 1); stem(n, y); title("signal1"); xlabel("n"); ylabel("y");
