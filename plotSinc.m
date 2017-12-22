for n = [1 5 10 50 100]
    % Sum all of the terms
    f = sym('0.5 * mysinc(pi * (k/2)) * exp(j * k * w * t)'); 'k'; -n; n;
    symsum(f);
        
    % Plot the graph of the result
    fNew = subs(f , 'w', 2*pi);
    ezplot(fNew, [-1 1]);
    title(sprintf('x_ {% d}(t)', n));
    
    % Pause momentarily
    pause(2);
    
end