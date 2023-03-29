num_samples = 100000;
x1 = 2 * rand(1, num_samples);

% Preallocate x3 with zeros and calculate x3(n) = x1(n) + x1(n-1)
x3 = zeros(1, num_samples);
for n = 2:num_samples
    x3(n) = x1(n) + x1(n-1);
end

% Calculate the histogram with 100 bins
bin = 100;
[counts_x3, bin_centers_x3] = hist(x3, bin);

% Plot the histogram using the bar function
figure(1);
bar(bin_centers_x3, counts_x3);
xlabel('Value');
ylabel('Count');
title('Histogram of x3(n)');

