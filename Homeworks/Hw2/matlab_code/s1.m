    s = tf('s');
%First we define our main parameters of the system which has been
%calculated through related formulas.
k = 1.58;
zeta = sqrt((log(0.443)^2)/(pi^2 + log(0.443)^2));
wn = pi / (0.332 * sqrt(1-zeta^2));

%here we define the transfer function of our system; Y(S) / R(S)
T = (k*wn^2) / (s^2 + 2*zeta*wn*s + wn^2);
subplot(2,1,1);
step(T)
title('closed loop Step response to our transfer function:')
stepinfo(T)
s
%open loop transfer function is G(s):
subplot(2,1,2);
G = T / (1 - T);
step(G)
title('open loop Step response to our transfer function:')
stepinfo(G)
