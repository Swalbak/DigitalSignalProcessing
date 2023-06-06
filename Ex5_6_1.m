% Ex5_6
% 한밭대 20191780 육정훈

w = 0:pi/1000:2*pi;
X = sin(2*w) ./ sin(w/2) .* exp(-i*3*w/2);
magX = abs(X);
angX = angle(X);

figure; % Create a new figure window
subplot(2,1,1); % Subplot for magnitude
plot(w/pi, magX);
title('Magnitude');
xlabel('Frequency');

subplot(2,1,2); % Subplot for phase
plot(w/pi, angX);
title('Phase');
xlabel('Frequency');

