clear all
clc
year = 2023;

while 1
  points = 0;

  cheat_pos = rand();
  if cheat_pos <= 0.3
    caught_pos = rand();
    if caught_pos<= 0.15
      disp("expelled");
      break
    else
      points = points + 10;
    endif
  else
    for i = 1:100
    myanswer = rand();
    if myanswer <= 0.2
      points = points +1;
    endif
    endfor
  endif

  if points <30
    year = year +1;
  else
    disp(year)
    break
  endif

end

