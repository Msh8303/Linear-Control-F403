s = tf('s');
num = 71.59*(0.142*s+1);
den = 0.007*s + 1;
C_s_lead = num/den;
margin(C_s_lead)
