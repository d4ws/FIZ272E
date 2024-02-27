clear all
clc

P = [9000,9000,9000,10000,10000,10000,11000,11000,11000];
T = [700,800,900,700,800,900,700,800,900];
v = [0.031980, 0.037948, 0.043675, 0.028345, 0.033827, 0.039053, 0.025360, 0.030452, 0.035270];

N = length(P);

sumT = sum(T);
sumP = sum(P);
sumv = sum(v);
sumTT = sum(T.*T);
sumPP = sum(P.*P);
sumPT = sum(P.*T);
sumvT = sum(v.*T);
sumvP = sum(v.*P);
sumvPT = sum(v.*P.*T);
sumPTT = sum(P.*T.*T);
sumPPT = sum(P.*P.*T);
sumPPTT = sum(P.*P.*T.*T);



M = [N , sumT, sumP, sumPT;
     sumT, sumTT, sumPT, sumPTT;
     sumP, sumPT, sumPP, sumPPT;
     sumPT, sumPTT, sumPPT, sumPPTT];

w = [sumv;sumvT; sumvP; sumvPT];

coeffs = M\w;

a1 = coeffs(1);
a2 = coeffs(2);
a3 = coeffs(3);
a4 = coeffs(4);



##lets say that P is always 9000
myP = 9000;

plotT = linspace(600,1000,50);
plotV = a1 + a2*plotT + a3*myP + a4*myP*plotT;

plot(plotT, plotV, T(1:3),v(1:3),"+")









