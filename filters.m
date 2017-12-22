filtertype = 'butterworth';  
wmax = 10;

% Get the filter function coefficients
switch filtertype 
	case {'butterworth'} 
		[t_top , t_bottom] = butter(10, wmax, 's'); 
	case {'bessel'} 
		[t_top , t_bottom] = besself(10, wmax); 
end

% Determine the magnitude and phase responses 
[freq_response, omega] = freqs(t_top , t_bottom , linspace(-20, 20, 500)); 
mag_response = abs(freq_response);
phase_response = unwrap(angle(freq_response));

% Plot the magnitude and phase response
subplot(2, 1, 1); 
plot(omega , mag_response);
title('Magnitude Response'); 
xlabel('Frequency'); 
ylabel('Magnitude');
subplot(2, 1, 2);
plot(omega , phase_response); 
title('Phase Response'); 
xlabel('Frequency');
ylabel('Angle');
