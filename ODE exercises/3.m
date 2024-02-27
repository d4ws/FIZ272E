#dndt = /gamma*N

clear all
clc

gamma = 0.0008675;
tolerance = 10^-7;
f = @(t,N) -gamma*N;

N_init = 100;

t_init = 0;

Nvalues(1) = N_init;
tvalues(1) = t_init;
h=0.1;

%%%%%euler
a=1;
while 1
  Nvalues(a+1) = Nvalues(a) + h * f(tvalues(a),Nvalues(a));
  tvalues(a+1) = tvalues(a) +h;
  if Nvalues(a+1)<= tolerance
    break
  else
    a = a+1;
  endif

end
subplot(4,1,1)
plot(tvalues,Nvalues)
title("euler")


%%%%RK2

i=1;
while 1
  tvalues(i+1) = tvalues(i) +h;
  Nvalues(i+1) = Nvalues(i) + h/2 * (f(tvalues(i),Nvalues(i)) + f(tvalues(i+1),Nvalues(i) + h*f(tvalues(i),Nvalues(i))));

  if Nvalues(i+1)<= tolerance
    break
  else
    i = i+1;
  endif

end
subplot(4,1,2)
plot(tvalues,Nvalues)
title("RK2")
%%%%RK4

i=1;
while 1
  tvalues(i+1) = tvalues(i) +h;
  F1 = f(tvalues(i),Nvalues(i));
  F2 = f(tvalues(i) + h/2 , Nvalues(i) + h/2 * F1);
  F3 = f(tvalues(i) + h/2 , Nvalues(i) + h/2 * F2);
  F4 = f(tvalues(i) + h ,   Nvalues(i) + h * F3);

  Nvalues(i+1) = Nvalues(i) + h/6 * (F1 + 2*F2 + 2*F3 + F4);

  if Nvalues(i+1)<= tolerance
    break
  else
    i = i+1;
  endif
end

subplot(4,1,3)
plot(tvalues,Nvalues)

title("RK4")


%%%%% exact solution: N(t) = N0 * e^-gamma*t

#dN/dt = -gamma*N0*e^-gamma*t

g = @(t,N) -gamma*N_init*exp(-gamma*t);

i=1;
while 1
  tvalues(i+1) = tvalues(i) +h;
  F1 = g(tvalues(i),Nvalues(i));
  F2 = g(tvalues(i) + h/2 , Nvalues(i) + h/2 * F1);
  F3 = g(tvalues(i) + h/2 , Nvalues(i) + h/2 * F2);
  F4 = g(tvalues(i) + h ,   Nvalues(i) + h * F3);

  Nvalues(i+1) = Nvalues(i) + h/6 * (F1 + 2*F2 + 2*F3 + F4);

  if Nvalues(i+1)<= tolerance
    break
  else
    i = i+1;
  endif
end

subplot(4,1,4)
plot(tvalues,Nvalues)

title("Exact")



