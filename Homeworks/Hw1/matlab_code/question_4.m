clear all 

s = zpk('s'); %zpk = zero-pole-gain; here, defining S in zpk format 
% allows us to efine systems using S.

% in this part we define Gains.
G1 = 1 / s;
G2 = 2 * s + 1; 
G3 = 1 / (s^2 + 1);
G4 = s / (s + 1);
H1 = 3 / s;
H2 = (s - 1) / (s + 3);
H3 = s / (s^2 + 3*s + 1);
H4 = 1 / (s + 2);

%T1 = Y5 / Y1
systemnames = 'G1 G2 G3 G4 H1 H2 H3 H4';

% the inpu and output of the system should be defined
inputvar = '[Y1]';
outputvar = '[G3-H4]';
input_to_G1 = '[Y1 - H3 - H1]';
input_to_G2 = '[G1]';
input_to_G3 = '[G2 + G4 - H2]';
input_to_G4 = '[Y1 - H3 - H1]';
input_to_H1 = '[G1]';
input_to_H2 = '[G3 - H4]';
input_to_H3 = '[G3 - H4]';
input_to_H4 = '[G3 - H4]';

sysoutname = 'SFG_T1_ic';
cleanupsysic= 'yes'; % removing unused parts of system
sysic 
% System Interconnection Command is used when we have multiple systems 
% (like transfer functions, feedback loops, gains, etc) and we intend
% to create an interconnected system.

SFG_T1_ic.outputname = {'Y5'};
T_1 = minreal(SFG_T1_ic); 
T_1
poles_T1 = pole(T_1);
disp(poles_T1)

%(Y2/Y1)
systemnames = 'G1 G2 G3 G4 H1 H2 H3 H4';
inputvar = '[Y1]';
outputvar = '[Y1 - H3 -  H1]';
input_to_G1 = '[Y1 - H3 - H1]';
input_to_G2 = '[G1]';
input_to_G3 = '[G2 + G4 - H2]';
input_to_G4 = '[Y1 - H3 - H1]';
input_to_H1 = '[G1]';
input_to_H2 = '[G3 - H4]';
input_to_H3 = '[G3 - H4]';
input_to_H4 = '[G3 - H4]';

sysoutname = 'SFG_ic';
cleanupsysic= 'yes';
sysic 
SFG_ic.inputname = {'Y1'};
SFG_ic.outputname = {'Y2'};
SFG_ic = minreal(SFG_ic);

% T2 = T1 / (Y2/Y1) = Y5 / Y2
T2 = minreal (SFG_T1_ic / SFG_ic);
T2
