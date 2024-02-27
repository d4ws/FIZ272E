clear all
clc

datas = dlmread("C:/Users/mamie/octave/data analysis/sleeplessnights.txt");


x = datas(:,1);
y = datas(:,2);
N = length(x);

for i=1:N
  y(i) = (y(i) - 32)*5/9;
end


sumxi = sum(x);

sumxi2 = sum(x.^2);

sumyi = sum(y);


sumxiyi=sum(x.*y);

M =[N,sumxi ; sumxi,sumxi2];
v = [sumyi ; sumxiyi] ;

coeffs = M\v;

a0 = coeffs(1);
a1 = coeffs(2);

xplot=linspace(x(1),x(length(x)),50);
yplot=a0+a1*xplot;

plot(x,y,'*',xplot,yplot)
