clear all
clc

x = [0,1,2];
y = [3,6,9];
N=3;

sumxi = sum(x); # 0+1+2

sumxi2 = sum(x.^2); # 0^2 + 1^2 + 2^2

sumyi = sum(y); # 3+6+9

sumxiyi=0;
for i=1:N
  sumxiyi += sum(x(i)*y(i)); #0*3 + 1*6 + 2*9 = 24
endfor

M =[N,sumxi ; sumxi,sumxi2];
v = [sumyi ; sumxiyi] ;

coeffs = M\v;
a0 = coeffs(1);
a1 = coeffs(2);

xplot=linspace(x(1),x(length(x)),50);
yplot=a0+a1*xplot;

plot(x,y,'*',xplot,yplot)
