s = tf('s');
c = (s^3 + 0.9*s^2 + 9*s) / (s^3 + 1.5*s^2 + (13/16)*s);

figure;
rlocus(c*sys, linspace(0, 100, 1000));
title('K > 0');
figure;
rlocus(c*sys, linspace(0, -100, 1000));
title('K < 0');