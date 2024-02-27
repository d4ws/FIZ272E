clear all
clc

datas = dlmread("C:/Users/mamie/octave/data analysis/einstein.txt");

X = datas(:,1);
Y = datas(:,2);
N = length(X);


N = length(X);
sumX = sum(X);
sumY = sum(Y);
sumX2 = sum(X.^2);
sumX3 = sum(X.^3);
sumX4 = sum(X.^4);
sumX5 = sum(X.^5);
sumX6 = sum(X.^6);
sumXY = sum(X.*Y);
sumXXY = sum(X.*X.*Y);
sumXXXY = sum(X.*X.*X.*Y);

####miss piggy's linear least squares fitting ax+b

M1 = [N , sumX;
     sumX, sumX2];
v1 = [sumY ; sumXY];

coeffs1 = M1\v1;
a1 = coeffs1(1);
b1 = coeffs1(2);

xplot1=linspace(X(1),X(length(X)),50); #length(x) = 7 , x(length(x)) = x'in 7. elemanı
yplot1=a1+b1*xplot1;

subplot(2,2,1)
plot(X,Y,'*',xplot1,yplot1)
title("first order")

####gonzos 2.nd order poly. least sq. fitting ax^2 + bx + c

M2 = [N , sumX , sumX2;
     sumX, sumX2,sumX3;
     sumX2, sumX3,sumX4];
v2 = [sumY ; sumXY; sumXXY];

coeffs2 = M2\v2;
a2 = coeffs2(1);
b2 = coeffs2(2);
c2 = coeffs2(3);

xplot2=linspace(X(1),X(length(X)),50); #length(x) = 7 , x(length(x)) = x'in 7. elemanı
yplot2=a2+b2*xplot2+c2*xplot2.^2;

subplot(2,2,2)
plot(X,Y,'*',xplot2,yplot2)
title("2nd order")



####fozzies 3rd order ax^3 + bx^2 + cx + d

M3 = [N , sumX , sumX2 , sumX3;
     sumX, sumX2,sumX3, sumX4;
     sumX2, sumX3,sumX4, sumX5
     sumX3,sumX4,sumX5,sumX6];
v3 = [sumY ; sumXY; sumXXY;sumXXXY];

coeffs3 = M3\v3;
a3 = coeffs3(1);
b3 = coeffs3(2);
c3 = coeffs3(3);
d3 = coeffs3(4);

xplot3=linspace(X(1),X(length(X)),50);
yplot3=a3 + b3*xplot3 + c3*xplot3.^2 + d3*xplot3.^3;

subplot(2,2,3)
plot(X,Y,'*',xplot3,yplot3)
title("third order")


####kermits lagrange

z = zeros(1,N);
yillar=1901:1954;
for days= 1:N
  lambda = ones(1, N);
  for i=1:N
    for j=1:N
      if i~=j
        lambda(i) = lambda(i) * ((yillar(days)-X(j))/(X(i)-X(j)));
      endif
    endfor
   z(days)=Y(i)*lambda(i) + z(days);
  endfor
endfor


subplot(2,2,4)
plot(X,Y, "*", yillar, z)
title("lagrange")
set(gcf, 'Position', [100 100 1000 700])





