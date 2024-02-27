##Preallocating arrays


clear all
clc

N = 10^6;
tic;
for i = 1:N
  v(i) = i*i;       %yavaş
endfor
time1 = toc


v = zeros(1,N);     %hızlı
tic;
for i = 1:N
  v(i) = i*i;
endfor
time2 =toc

