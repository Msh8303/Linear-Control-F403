syms t a s
f(t,a) = piecewise(0 < t <= a/2, (24/a^3)*t, ...
a/2 < t <= a, (24/a^3)*t - (24/a^2), ...
t> a, 0);

disp("Original Function: ")
pretty(f)

f_step_func = ((24/a^3)*t * (heaviside(t))) - ((24/a^3)*t * (heaviside(t - a/2))) + (((24/a^3)*t - (24/a^2))*heaviside(t - a/2) - ((24/a^3)*t - (24/a^2))*heaviside(t-a));
disp("Original Function using step function: ")
pretty(f_step_func)


a_value = 5;
f_ = subs(f_step_func, a, a_value);
fplot(@(t) double(subs(f_,t)), [0 , 2*a_value], LineWidth = 2);
xlabel('t')
ylabel('f(t)')
title("F with a = 5")
grid on

F_s = laplace(f_step_func, t, s);
disp("Laplace transform for f:")
pretty(F_s)

F_s_a = laplace(f_, t, s);
disp("Laplace transform for f with a = 5:")
pretty(F_s_a)

disp(laplace((24/a^3)*t  * heaviside(t-a)))