clear all
clc

x = [1,2,3,4,5];
y = [2,4,1,3,8];
N=5;

sumxi = sum(x);
sumxi2 = sum(x.^2);
sumxi3 = sum(x.^3);
sumxi4 = sum(x.^4);
sumxi5 = sum(x.^5);
sumxi6 = sum(x.^6);

sumyi = sum(y);
sumxiyi = sum(x.*y);
sumxi2yi = sum(x.^2.*y);
sumxi3yi = sum(x.^3.*y);

M =[N,sumxi,sumxi2,sumxi3;
    sumxi,sumxi2,sumxi3,sumxi4;
    sumxi2,sumxi3,sumxi4,sumxi5;
    sumxi3,sumxi4,sumxi5,sumxi6;];

v = [sumyi;sumxiyi;sumxi2yi;sumxi3yi] ;

coeffs = M\v;
a0 = coeffs(1)
a1 = coeffs(2)
a2 = coeffs(3)
a3 = coeffs(4)

xplot=linspace(x(1),length(x),50);
yplot=a0+a1*xplot+a2*xplot.^2+a3*xplot.^3;

plot(x,y,'*',xplot,yplot)

## farklı bir çözüm ##

##x = [1,2,3,4,5];
##y = [2,4,1,3,8];
##
##N = length(x);
##M = zeros(4,4);
##V = zeros(4,1);
##
##
##for a=1:4
##  for b=1:4
##    for i= 1:N
##      M(a,b) = M(a,b) + (x(i)^(a+b-2));
##    endfor
##  endfor
##endfor
##
##for a=1:4
##  for i=1:N
##    V(a) = V(a) + (x(i)^(a-1))*y(i);
##  endfor
##endfor
##
##coeffs = M\V;
##
##xdenklem=linspace(x(1),length(x),100);
##
##
##ydenklem= coeffs(1) + coeffs(2)*xdenklem + coeffs(3)*xdenklem.^2 + coeffs(4)*xdenklem.^3;
##
##plot(x,y,'+',xdenklem,ydenklem)
##
####ydenklem =0;
####for i = 1:4
####  ydenklem = ydenklem + coeffs(i)*xdenklem.^(i-1);
####endfor

