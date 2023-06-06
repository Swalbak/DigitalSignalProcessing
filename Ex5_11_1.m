% Ex5_11
% 한밭대 20191780 육정훈

n = 0:14; x = [10 * (0.8).^(0:10) zeros(1,4)];

figure;
% Original extended sequence
subplot(2, 2, 1);
stem(n, x);
title('Original sequence (extended)');
xlabel('n'); ylabel('x(n)');

% Periodic shift
x_shifted = [x(4:end) x(1:3)]; % Manually shift by 3 to the right
subplot(2, 2, 2);
stem(n, x_shifted);
title('Periodic shift by 3 samples to the right');
xlabel('n'); ylabel('x((n-3))_{15}R_{15}(n)');

% Periodic extension
x_extended = repmat(x, 1, 3); % Repeat the sequence 3 times
n_extended = 0:(length(x_extended) - 1); % n values for the extended sequence
subplot(2, 2, 3);
stem(n_extended, x_extended);
title('Periodic extension');
xlabel('n'); ylabel('x_{extended}(n)');

% Circular shift
x_circular_shift = circshift(x, 3); % Circular shift by 3 to the right
subplot(2, 2, 4);
stem(n, x_circular_shift);
title('Circular shift by 3 samples to the right');
xlabel('n'); ylabel('x((n-3))_{15}R_{15}(n)');

