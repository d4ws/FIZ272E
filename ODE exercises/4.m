clear all
clc

betaa = 0.0005;
gama = 0.05;

f = @(t,S,I,R) (-betaa*S*I);
g = @(t,S,I,R) (betaa*S*I - gama*I);
k = @(t,S,I,R) (gama*I);

t_init = 0;
s_init = 999;
i_init = 1;
r_init = 0;
t_final = 100;
N = 1000;

h = (t_final - t_init)/N;

tvalues = linspace(t_init,t_final,N);

svalues(1) = s_init;
ivalues(1) = i_init;
rvalues(1) = r_init;

for i=1:N-1
  t=tvalues(i);
  S=svalues(i);
  I=ivalues(i);
  R=rvalues(i);

  F1x = f(t,S,I,R);
  F1y = g(t,S,I,R);
  F1z = k(t,S,I,R);

  F2x = f(t + (h/2) , S + (h/2) * F1x, I + h/2 * F1y, R + (h/2) * F1z);
  F2y = g(t + (h/2) , S + (h/2) * F1x, I + h/2 * F1y, R + (h/2) * F1z);
  F2z = k(t + (h/2) , S + (h/2) * F1x, I + h/2 * F1y, R + (h/2) * F1z);

  F3x = f(t + (h/2) , S + (h/2) * F2x, I + h/2 * F2y, R + (h/2) * F2z);
  F3y = g(t + (h/2) , S + (h/2) * F2x, I + h/2 * F2y, R + (h/2) * F2z);
  F3z = k(t + (h/2) , S + (h/2) * F2x, I + h/2 * F2y, R + (h/2) * F2z);

  F4x = f(t+h , S+h * F3x, I+h * F3y, R+h * F3z);
  F4y = g(t+h , S+h * F3x, I+h * F3y, R+h * F3z);
  F4z = k(t+h , S+h * F3x, I+h * F3y, R+h * F3z);

  svalues(i+1) = svalues(i) + h/6 * (F1x + 2*F2x + 2*F3x + F4x);
  ivalues(i+1) = ivalues(i) + h/6 * (F1y + 2*F2y + 2*F3y + F4y);
  rvalues(i+1) = rvalues(i) + h/6 * (F1z + 2*F2z + 2*F3z + F4z);
end

plot(tvalues,svalues,tvalues,ivalues,tvalues,rvalues)
