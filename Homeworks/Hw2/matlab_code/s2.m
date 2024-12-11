%defining the open loop and the closed loop systep and plot them
s = tf('s');
figure;
hold on
G = 0.4 / (s + 0.4);
step(G)
T = 0.4 / (s + 0.8);
step(T)
legend ('G: Open loop TF', 'T: Closed loop TF')
hold off

%use stepinfo to fine related infos:
stepinfo(G)
stepinfo(T)

%  our input to the system is step function; so:
R = 1 / s;
%find steady state Error:
syms s_
G_ = 0.4 / (s_ + 0.4);  
T_ = 0.4 / (s_ + 0.8);  
R_ = 1 / s_;  

E_openloop = (1 - G_) * R_;
E_closedloop = (1 - T_) * R_;

ess_closed = limit(E_closedloop*s_, s_, 0);
ess_open = limit(E_openloop*s_, s_, 0);


disp('Steady-State Error for Open-Loop System is:')
disp(ess_open)
disp('Steady-State Error for Closed-Loop System is:')
disp(ess_closed)


% damp gives us infos like zeta, wn, time constant, ...
damp(G)
damp(T)