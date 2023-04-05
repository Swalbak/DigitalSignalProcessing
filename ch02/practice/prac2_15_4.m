% prac2_15_4.m

n1 = 0:7; [x11,nx11] = stepseq(0,0,7);
[x12,nx12] = stepseq(6,0,7);
[x13,n13] = sigadd(x11,nx11,-x12,nx12);
x14 = n1/4; n14 = n1; x = x14 .* x13;
n2 = -3:4;
[h11,nh11] = stepseq(-2,-3,4);
[h12,nh12] = stepseq(3,-3,4);
h = 2 * (h11 - h12);
[y,n] = conv_m(x,n1,h,n2);

subplot(2, 1, 1); stem(n, y); title("signal1"); xlabel("n"); ylabel("y");
