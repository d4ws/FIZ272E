clear all
clc

total_points =0;


for i = 1:34
  x = rand();
  if x<0.4
    total_points = total_points+3;
  elseif 0.4 <= x < 0.9
    total_points = total_points +0;
  else
    total_points = total_points +1;
  endif
endfor

disp(total_points)


