clc
clear all

% Define the angle range
theta = linspace(0, pi/2, 100);

% Define the radius of the circle
radius = 1;
x = radius * cos(theta);
y = radius * sin(theta);

N = 10^4;

rand_x = zeros(1,N);
rand_y = zeros(1,N);

points_inside = 0;

for i = 1:N
  rand_x(i) = rand();
  rand_y(i) = rand();

  distance = sqrt(rand_x(i)^2 + rand_y(i)^2);

  if distance < radius
    points_inside += 1;
  endif

endfor

% Plot the circle
plot(x, y, "r");
hold on;
scatter(rand_x , rand_y, 1, "filled") # 1 is for the size of the point
axis([0 1 0 1])
axis equal
set(gcf, 'Position', [100 100 1000 700])


mypi = 4*points_inside/N
