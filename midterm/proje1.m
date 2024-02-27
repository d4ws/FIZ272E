## Muhammet Emin Altuncu 090210150

## General equation for ellipse = ((x-x0)/a)^2 + ((y-y0)/b)^2 = 1
## In this example, i will be using an quarter ellipse which has a length of 2 on semi-major axis
## and 1 on semi-minor axis.
tic;
x0MEA = 0; % X-coordinate of the center of the ellipse
y0MEA = 0; % Y-coordinate of the center of the ellipse
aMEA = 2; % Length of the semi-major axis of the ellipse
bMEA = 1; % Length of the semi-minor axis of the ellipse
thetaMEA = 0; % Angle (in radians) between the semi-major axis and the x-axis

tMEA = linspace(0, pi/2, 100); % Create an array of 100 points evenly spaced between 0 and pi/2
xMEA = x0MEA + aMEA*cos(thetaMEA)*cos(tMEA) - bMEA*sin(thetaMEA)*sin(tMEA); % X-coordinates of the ellipse points
yMEA = y0MEA + aMEA*sin(thetaMEA)*cos(tMEA) + bMEA*cos(thetaMEA)*sin(tMEA); % Y-coordinates of the ellipse points

NMEA = 10^6; % Number of points that we will scatter on the graph randomly.

rand_xMEA = zeros(1,NMEA);   % Creating zero matrixes for X and Y values of scattered points
rand_yMEA = zeros(1,NMEA);   % so we can do calculation on them.

points_insideMEA = 0; % Setting the total number of points inside of the ellipse to be zero
                      % so we can do summation on it if there are any points inside of the ellipse.

% this for loop adds 1 to points_insideMEA variable if any of the scattered points falls inside of the ellipse.
for i = 1:NMEA
  rand_xMEA(i) = 2 * rand(); % scattered points will have x values between 0 and 2
  rand_yMEA(i) = rand();     % scattered points will have y values between 0 and 1

  distanceMEA = sqrt(rand_xMEA(i)^2/aMEA^2 + rand_yMEA(i)^2/bMEA^2); % The length of the distance of the point from the center of the ellipse.
                                                                     % If this value is less than 1, we can say that this point is inside of the ellipse.

  if  distanceMEA < 1 % Check if the random point falls inside the ellipse
    points_insideMEA += 1; % Add 1 if random point is inside of the ellipse
  endif
endfor

% Plot the circle
##plot(xMEA, yMEA, "r");
##hold on;
##scatter(rand_xMEA , rand_yMEA, 1, "filled")
##axis([0 2 0 1])
##axis equal
mypiMEA = 4*points_insideMEA/NMEA % Our pi result
pi - mypiMEA
toc;


# K  Pi
# 1  3.6
# 2  3.16
# 3  3.2240
# 4  3.1196
# 5  3.1404
# 6  3.1429 elapsed time = 16.762 seconds.
