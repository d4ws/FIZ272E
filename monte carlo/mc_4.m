clear all
clc

money = 20;
gain = 1;
lose = 0.5;


for i = 1:300
  rand_ball = randi(16);
  rand_hit = randi(16);
  if rand_ball == rand_hit
    money = money + gain;
  else
    money = money-lose;
  endif

endfor


money
