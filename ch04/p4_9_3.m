% p4_9_3

n1 = [0 1 2];
y1 = [1 1 1];
[y2,n2] = conv_m(y1,n1,y1,n1);
[x,n] = conv_m(y1,n1,y2,n2)

