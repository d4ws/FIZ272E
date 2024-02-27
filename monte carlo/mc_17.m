clear all
clc

wins=0;
games=0;

while games < 10000
  car = randi(3);
  pick= randi(3);

  if pick == car
    wins += 1;
  endif

  games += 1;
endwhile

disp(wins) ## değişmezse
disp(10000 - wins) ## değişirse

