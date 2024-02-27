x0 = 0; % X-coordinate of the center of the ellipse
y0 = 0; % Y-coordinate of the center of the ellipse
a = 2; % Length of the semi-major axis of the ellipse
b = 1; % Length of the semi-minor axis of the ellipse
theta = 0; % Angle (in radians) between the semi-major axis and the x-axis

t = linspace(0, 2*pi, 100); % Create an array of 100 points evenly spaced between 0 and 2*pi
x = x0 + a*cos(theta)*cos(t) - b*sin(theta)*sin(t); % X-coordinates of the ellipse points
y = y0 + a*sin(theta)*cos(t) + b*cos(theta)*sin(t); % Y-coordinates of the ellipse points

plot(x, y); % Plot the ellipse
axis equal; % Set the aspect ratio of the plot to be equal in both directions

