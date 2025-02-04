s = tf('s');
num = (0.5*s-1);
zeta = 0.1;
den = s*(0.34*0.34 * s^2 + 2*zeta*0.34*s + 1);
sys  = num / den;
bode(sys)