s = tf('s');
num = exp(-0.4*s);
den = 0.2*s + 1;
g = num /den;
margin(g)