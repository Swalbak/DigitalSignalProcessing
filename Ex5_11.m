% Ex5_11
% 한밭대 20191780 육정훈

n = 0:10; x = 10 * (0.8).^n;

figure;
% Original sequence
subplot(2, 2, 1);
stem(n, x);
title('Original sequence');
xlabel('n'); ylabel('x(n)');

% Periodic shift
x_shifted = [x(5:end) x(1:4)];
subplot(2, 2, 2);
stem(n, x_shifted);
title('Periodic shift by 4 samples to the left');
xlabel('n'); ylabel('x((n+4))_{11}R_{11}(n)');

% Periodic extension
x_extended = repmat(x, 1, 3);
n_extended = 0:(length(x_extended) - 1);
subplot(2, 2, 3);
stem(n_extended, x_extended);
title('Periodic extension');
xlabel('n'); ylabel('x_{extended}(n)');

% Circular shift
x_circular_shift = circshift(x, -4);
subplot(2, 2, 4);
stem(n, x_circular_shift);
title('Circular shift by 4 samples to the left');
xlabel('n'); ylabel('x((n+4))_{11}R_{11}(n)');

