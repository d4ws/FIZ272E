function[N , sumX, sumXX , sumXXX, sumY, sumXY, sumXXY,sumXXXY] = sums(X , Y)

N = length(X);
sumX = sum(X);
sumXX = sum(X.^2);
sumXXX = sum(X.^3);
sumXY = sum(X.*Y);
sumXXY = sum(X.*X.*Y);
sumXXXY = sum(X.*X.*X.*Y);




endfunction
