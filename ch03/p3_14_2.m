% p3_14_2

n = [0:40];
alpha = 20;
wc = 0.5*pi;
fc = wc/(2*pi);
h = 2*fc*sinc(2*fc*(n-alpha));

stem(n, h);
