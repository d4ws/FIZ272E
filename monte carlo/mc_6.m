clear all
clc

name = "Emi"; %5,13,9

monke = 0;
while 1
  number = randi(27);
  if number == 5
    number = randi(27);
    if number == 13
      number = randi(27);
      if number ==9
          break
       endif
      endif

  else
    monke = monke +1;
  endif
end
monke
