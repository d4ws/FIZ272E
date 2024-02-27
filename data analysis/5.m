clear all
clc

x = [0:0.01:1];
##x = linspace(0,1,101)
y(1) =1;
for i = 1:100
  y(i+1) = y(i) * 1.01;
endfor

Y = log(y);
X =x;
N = length(X);
sumX = sum(X);
sumXX = sum(X.*X);
sumY = sum(Y);
sumXY = sum(X.*Y);

M =[N , sumX ; sumX , sumXX];
v = [sumY ; sumXY] ;
coeffs = M\v;

a0 = coeffs(1);
a1 = coeffs(2);
A = exp(a0);

xplot=linspace(X(1),X(length(X)),100);
yplot=A * exp(a1 * xplot);
plot(X,y,'*',xplot,yplot)
