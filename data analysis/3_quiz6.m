clear all
clc

datas = dlmread("C:/Users/mamie/octave/data analysis/jellyhunt.txt");

x = datas(:,1);
y = datas(:,2);

##f(t) = At^3 + B

N = length(x);

sumxi6 = sum(x.^6);

sumxi3 = sum(x.^3);

sumyi = sum(y);

sumyixi3 = sum(x.^3.*y)


M =[N , sumxi3 ; sumxi3 , sumxi6];
v = [sumyi ; sumyixi3] ;

coeffs = M\v;

a0 = coeffs(1);
a1 = coeffs(2);

xplot=linspace(x(1),x(length(x)),50);
yplot=a0+a1*xplot.^3;

plot(x,y,'*',xplot,yplot)


