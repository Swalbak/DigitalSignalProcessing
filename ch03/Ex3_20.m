% Ex3_20
% 교재 3.43 식의 구현

n = n1:n2;
t = t1:t2;
Fs = 1/Ts;
nTs = n*Ts;
xa = x * sinc(Fs * (ones(length(n), 1)*t - nTs'*ones(1, length(t))));

