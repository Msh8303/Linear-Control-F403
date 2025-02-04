s = tf('s');
num = 5 * 2;
den = (s*(s+2) + 5)*s*(s + 3);
G_s = num / den;

margin(G_s)
