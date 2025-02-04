figure;
subplot(2,1,1)
semilogx(omega, magnitude_db, 'b', 'LineWidth', 1);
grid on;
xlabel('Frequency');
ylabel('Magnitude');
title('Bode Diagram');
xlim([min(omega) max(omega)]);
legend('Magnitude');

subplot(2,1,2)
semilogx(omega, phase, 'r', 'LineWidth', 1);
grid on;
xlabel('Frequency');
ylabel('Phase');
xlim([min(omega) max(omega)]);
legend('Phase');