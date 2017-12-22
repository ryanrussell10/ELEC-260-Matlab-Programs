function drawpattern(theta, n)
% This function takes n and ? (in degrees) as input arguments, 
% and then computes and plots the points connected by straight lines.

% First convert from degrees to radians
radTheta = theta * pi / 180;

% Create a list of points
p = [0 0]';
list = p';

% Fill the list of points
for i = 1: (n - 1)
    points = [cos(radTheta) sin(radTheta); -sin(radTheta) cos(radTheta)] 
    points = points ^ (i - 1);
    points = points * [i 0]';
    p = p + points;
    list = [list; p'];
end

% Plot the list of points
plot(list(: , 1), list(: , 2));
axis('equal');

end

