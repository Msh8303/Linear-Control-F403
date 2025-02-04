s = tf('s');
num = 5 * 2;
den = (s*(s+2) + 5)*s*(s + 3);
G_s = num / den;
num_c = (30*(0.033*844.2*s + 1));
den_c = (844.2*s + 1) ;
C_lead = num_c / den_c;
Loop_Gain = G_s*C_lead;
margin(Loop_Gain)
simplify(Loop_Gain)