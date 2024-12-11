s = tf('s');
%define the system parameters
wn = 2; % wn
k = 4; % wn^2
zeta = 1;

%Transfer function (closed_loop):
T = wn^2 / (s^2 + 2*s*wn*zeta + wn^2);
step(T)
stepinfo(T)
