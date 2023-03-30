function [y, m] = dnsample(x, n, M)
  y = x(1:M:end);
  m = n(1:M:end);
