function [Ac, As, r, v0] = inv_CC_PP(b0, b1, a1, a2)
  Ac = b0;
  r = sqrt(a2);
  w0 = acos(-a1/(2*r));
  As = (b1 / r+Ac*cos(w0)) / sin(w0);
  v0 = w0/pi;
