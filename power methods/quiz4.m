clear all
clc

tolerance = 10^-5;

A = [0 , 11 , -5 ; -2 , 17 , -7 ; -4 ,  26 , -10];

X0 = [1;1;1];

Y = A*X0;

c_old = sqrt(sum(Y.^2))

while 1

  X = Y/c_old;
  Y = A*X;
  c = sqrt(sum(Y.^2))

  if abs(c_old -c) < tolerance
    break
  else
    c_old = c;
  endif

endwhile

##for i = 1:20
##  X = Y/c_old;
##  Y = A*X;
##  c_old = sqrt(sum(Y.^2))
##endfor
