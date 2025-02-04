
s = tf('s');
num = 200;
den = s*(s+1)*(s+10);
g = num / den;

kp = 0.0716;
T = 1.8;
kd = kp*T;

p = kp* (1 + kd*s/kp);
l = g*p;
closed_loop= l /(1 + l);

margin(l)
stepinfo(closed_loop)
step(closed_loop)
