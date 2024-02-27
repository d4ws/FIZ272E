clear all
clc

mysum = 0;

for i = 1:15
  mysum += 1/(2^i);
endfor

disp(mysum)
