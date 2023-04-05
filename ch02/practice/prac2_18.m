% prac2_18.m

x = [1,2,3,4,5];
x = x'
h = [6, 7, 8, 9]';
[y,H] = conv_tp(h,x);
y = y';
disp(y);
disp(h);
