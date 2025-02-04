s = tf('s');
num = exp(-0.4*s);
den = 0.2*s + 1;
ki = 1;
kp = 0.048;
g = num /(den);
pi = (ki/s)*(kp*s/ki + 1);
l = pi*g;
margin(l)