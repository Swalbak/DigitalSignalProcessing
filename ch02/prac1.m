interval = 2*pi/20
n1 = [0:interval:2*pi]
x1 = sin(n1)

n2 = [0:interval:2*pi]
x2 = cos(n2)

[shift_x2, shift_x2_n] = sigshift(x2, n2, -pi*3/2)
[shift_fold_x2, shift_fold_x2_n] = sigfold(shift_x2, shift_x2_n)
[add_x, add_n] = sigadd(x1, n1, shift_fold_x2, shift_fold_x2_n, interval)

subplot(2, 1, 2); stem(add_n, add_x); title('sin(n) + cos(-n -pi*3/2)');
xlabel('n'); ylabel('sin(n) + cos(-n -pi*3/2)'); axis([-3*pi, 3*pi, -1, 1]);

