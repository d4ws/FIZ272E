# dxdt = -10(x-y), dydt = -xz +28x-y, dzdt=xy - 8z/3 using RK4
clear all
clc

f = @(t,x,y,z) (-10*(x-y));
g = @(t,x,y,z) (-x*z+28*x-y);
k = @(t,x,y,z) (x*y -8*z/3);

t_init = 0;
x_init = 1;
y_init = 1;
z_init = 1;
t_final = 20;
N = 1000;

h = (t_final - t_init)/N;

tvalues = linspace(t_init,t_final,N);

xvalues(1) = x_init;
yvalues(1) = y_init;
zvalues(1) = z_init;

for i=1:N-1
  t=tvalues(i);
  x=xvalues(i);
  y=yvalues(i);
  z=zvalues(i);

  F1x = f(t,x,y,z);
  F1y = g(t,x,y,z);
  F1z = k(t,x,y,z);

  F2x = f(t + (h/2) , x + (h/2) * F1x, y + h/2 * F1y, z + (h/2) * F1z);
  F2y = g(t + (h/2) , x + (h/2) * F1x, y + h/2 * F1y, z + (h/2) * F1z);
  F2z = k(t + (h/2) , x + (h/2) * F1x, y + h/2 * F1y, z + (h/2) * F1z);

  F3x = f(t + (h/2) , x + (h/2) * F2x, y + h/2 * F2y, z + (h/2) * F2z);
  F3y = g(t + (h/2) , x + (h/2) * F2x, y + h/2 * F2y, z + (h/2) * F2z);
  F3z = k(t + (h/2) , x + (h/2) * F2x, y + h/2 * F2y, z + (h/2) * F2z);

  F4x = f(t+h , x+h * F3x, y+h * F3y, z+h * F3z);
  F4y = g(t+h , x+h * F3x, y+h * F3y, z+h * F3z);
  F4z = k(t+h , x+h * F3x, y+h * F3y, z+h * F3z);


  xvalues(i+1) = xvalues(i) + h/6 * (F1x + 2*F2x + 2*F3x + F4x);
  yvalues(i+1) = yvalues(i) + h/6 * (F1y + 2*F2y + 2*F3y + F4y);
  zvalues(i+1) = zvalues(i) + h/6 * (F1z + 2*F2z + 2*F3z + F4z);
end

plot3(xvalues,yvalues,zvalues)



