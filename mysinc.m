function output = mysinc (input)
% The mysinc function computes the sinc function.
    % sinc(input) returns a matrix with elements that are the sinc of input
    
    % Initialize the output to all ones
    output = ones(size(input));
    
    % Find the indices of all the elements in input
    index = find(input);
    
    % Compute the sinc function for all nonzero elements
    output(index) = sin (input(index)) ./ (input(index));
    
end

