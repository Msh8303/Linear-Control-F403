s = tf('s');
num = 2500;
den = s*(s+25);
G = num / den;
Lead = (1/sqrt(1.84)) * (0.0157*1.84*s + 1) / (0.0157*s + 1);
Lag = 1.35 * ( 0.1*s + 1 ) / (0.147*s+1);
margin(G*Lead*Lag)
G*Lead*Lag