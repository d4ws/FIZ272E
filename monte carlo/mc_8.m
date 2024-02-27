clear all

year = 2023;

while 1
  points = 0;

  for i = 1:100
    myanswer = rand();
    if myanswer <= 0.2
      points = points +1;
    endif
  endfor

  if points <30
    year = year +1;
  else
    break
  endif

end

disp(year)
