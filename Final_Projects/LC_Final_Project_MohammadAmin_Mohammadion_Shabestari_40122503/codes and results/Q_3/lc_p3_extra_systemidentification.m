phase_rad = deg2rad(phase);
complex_data = magnitude .* exp(1j*phase_rad);
frequency_response = idfrd(complex_data, omega, 0);
sys = tfest(frequency_response, 3, 1);
sys