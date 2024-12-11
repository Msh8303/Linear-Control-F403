s = tf('s');
%define the system parameters
wn = 2.8981; % wn
k = 2.8981^2; % wn^2
zeta = 0.6901;

%Transfer function (closed_loop):
T = wn^2 / (s^2 + 2*s*wn*zeta + wn^2);
step(T)
stepinfo(T)


