
s = tf('s');
num = 200;
den = s*(s+1)*(s+10);
g = num / den;

kp = 0.05;
kd = 0.5; %[0.1, 0.2, 0.3, 0.4, 0.5]

p = kp + kd*s;
l = g*p;

margin(l)
