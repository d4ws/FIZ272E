tic;

a = 2; % semi-axis a
b = 1; % semi-axis b
n = 10^6; % number of random points

% generate random points within the bounding box of the ellipse
x = rand(n,1)*2*a - a;
y = rand(n,1)*2*b - b;

% check which points fall within the ellipse
within_ellipse = ((x./a).^2 + (y./b).^2) <= 1;

% estimate pi

pi_estimate = 4 * sum(within_ellipse) / n;

printf("Estimated value of pi: %f\n", pi_estimate);
pi_estimate - pi
toc;
