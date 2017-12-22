w = linspace(-10, 10, 500); 
F = (1i * w + 1) .^ (-1); 

subplot(2, 1, 1); 
plot(w, abs(F));

title('Magnitude'); 
xlabel('\omega');
ylabel('|F(\omega)|'); 

subplot(2, 1, 2); 
plot(w, angle(F));

title('Argument');
xlabel('\omega');
ylabel('arg F(\omega)');
