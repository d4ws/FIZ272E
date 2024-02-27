% Muhammet Emin Altuncu 090210150
% Question 3: Using RK4 to solve an initial value problem

% Code
#lets say dh/dz = k
#we would have two equations
# dh/dz = k and dk/dz = sinz-3k-5h

f = @(z,h,k) k;
g = @(z,h,k) sin(z)-3*k-5*h;

h_init = 1;
k_init = 3;
z_init = 0;
z_final = 7;
N = 1000;
H = (z_final - z_init)/N;
zvalues = linspace(z_init,z_final,N);
hvalues(1) = h_init;
kvalues(1) = k_init;

for i=1:N-1
  z=zvalues(i);
  h=hvalues(i);
  k=kvalues(i);

  F1h = f(z,h,k);
  F1k = g(z,h,k);

  F2h = f(z + (H/2) , h + H/2 * F1h, k + (H/2) * F1k);
  F2k = g(z + (H/2) , h + H/2 * F1h, k + (H/2) * F1k);

  F3h = f(z + (H/2) , h + H/2 * F2h, k + (H/2) * F2k);
  F3k = g(z + (H/2) , h + H/2 * F2h, k + (H/2) * F2k);

  F4h = f(z+H , h+H * F3h, k+H * F3k);
  F4k = g(z+H , h+H * F3h, k+H * F3k);

  hvalues(i+1) = hvalues(i) + H/6 * (F1h + 2*F2h + 2*F3h + F4h);
  kvalues(i+1) = kvalues(i) + H/6 * (F1k + 2*F2k + 2*F3k + F4k);
end

hvalues(N)
plot(zvalues,hvalues)
