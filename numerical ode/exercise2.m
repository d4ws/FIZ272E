# dzdt = -bz -w^2y, dydt = z using RK4
clear all
clc

b=0.3;
w=0.7;

f = @(t,y,z) z;
g = @(t,y,z) (-b*z-(w*w)*y);

t_init = 0;
y_init = 1;
z_init = 1;
t_final = 30;
N = 1000;

h = (t_final - t_init)/N;

tvalues = linspace(t_init,t_final,N);
yvalues(1) = y_init;
zvalues(1) = z_init;

for i=1:N-1
  t=tvalues(i);
  y=yvalues(i);
  z=zvalues(i);

  F1y = f(t,y,z);
  F1z = g(t,y,z);

  F2y = f(t + (h/2) , y + h/2 * F1y, z + (h/2) * F1z);
  F2z = g(t + (h/2) , y + h/2 * F1y, z + (h/2) * F1z);

  F3y = f(t + (h/2) , y + h/2 * F2y, z + (h/2) * F2z);
  F3z = g(t + (h/2) , y + h/2 * F2y, z + (h/2) * F2z);

  F4y = f(t+h , y+h * F3y, z+h * F3z);
  F4z = g(t+h , y+h * F3y, z+h * F3z);


  yvalues(i+1) = yvalues(i) + h/6 * (F1y + 2*F2y + 2*F3y + F4y);
  zvalues(i+1) = zvalues(i) + h/6 * (F1z + 2*F2z + 2*F3z + F4z);
end

plot(tvalues,yvalues)
