function [] = tempConverter()
%This program generates a temperature conversion table for
%Celsius to Fahrenheit and Celsius to Kelvin.

fprintf('    %-10s %-12s %-8s\n', 'Celsius', 'Fahrenheit', 'Kelvin');
for C = -50 : 10 : 50
    F = (9/5) * C + 32;
    K = C + 273.18;
    fprintf('%10.2f %10.2f %12.2f\n', C, F, K);
end

