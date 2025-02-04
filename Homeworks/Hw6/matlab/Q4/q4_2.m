s = tf('s');
num = 2500;
den = s*(s+25);
G = num / den;
Lead = (1/sqrt(1.84)) * (0.0157*1.84*s + 1) / (0.0157*s + 1);
margin(G*Lead)
G*Lead