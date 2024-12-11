num = [5 10];
den = [1 4 5];

transfer_func = tf(num, den);
disp('G(s):')
transfer_func


disp('Poles:')
pole(transfer_func)
disp('Zeros:')
zero(transfer_func)


step(transfer_func)
disp('with step function as input:')
stepinfo(transfer_func)