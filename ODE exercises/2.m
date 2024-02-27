# dxdt = ax + bxy, dydt = gamma*y + roxy
clear all
clc

alpha=0.25;
beta=-0.01;
ro=0.01;
gamma=-1;


f = @(t,x,y) alpha*x + beta*x*y;
g = @(t,x,y) gamma*y + ro*x*y;

x_init = 80;
y_init = 30;

t_init = 0;
t_final = 50;
N=10000;

h = (t_final - t_init)/N;

tvalues = linspace(t_init,t_final,N);
xvalues(1) = x_init;
yvalues(1) = y_init;


for i=1:N-1
  t=tvalues(i);
  y=yvalues(i);
  x=xvalues(i);

  F1x = f(t,x,y);
  F1y = g(t,x,y);

  F2x = f(t + (h/2) , x + h/2 * F1x, y + (h/2) * F1y);
  F2y = g(t + (h/2) , x + h/2 * F1x, y + (h/2) * F1y);

  F3x = f(t + (h/2) , x + h/2 * F2x, y + (h/2) * F2y);
  F3y = g(t + (h/2) , x + h/2 * F2x, y + (h/2) * F2y);

  F4x = f(t+h , x+h * F3x, y+h * F3y);
  F4y = g(t+h , x+h * F3x, y+h * F3y);


  xvalues(i+1) = xvalues(i) + h/6 * (F1x + 2*F2x + 2*F3x + F4x);
  yvalues(i+1) = yvalues(i) + h/6 * (F1y + 2*F2y + 2*F3y + F4y);
end

##subplot(2,2,1)
plot3(tvalues,xvalues,yvalues)
title(t,y,x)

##subplot(2,2,2)
##plot(tvalues,xvalues)
##title("t-x")
##
##subplot(2,2,3)
##plot(tvalues,yvalues)
##title("t-y")
##
##subplot(2,2,4)
##plot(xvalues,yvalues)
##title("x-y")





