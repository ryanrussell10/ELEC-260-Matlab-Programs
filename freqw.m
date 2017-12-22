function [freq_response, omega] = freqw(a_coeff, b_coeff, omega)

    freq_response = polyval(a_coeff, omega) ./ polyval(b_coeff , omega);
    % If no output arguments were specified, plot the frequency response
    if nargout == 0
        
        % Get the magnitude response
        mag_response = abs(freq_response);

        % Get the phase response 
        phase_response = angle(freq_response);

        % Plot of the magnitude response. 
        subplot(2, 1, 1);
        plot(omega , mag_response);
        title('Magnitude Response');
        xlabel('Frequency');
        ylabel('Magnitude');

        % Plot of the phase response.
        subplot(2, 1, 2); 
        plot(omega , phase_response); 
        title('Phase Response');
        xlabel('Frequency'); 
        ylabel('Angle');

    end
end

