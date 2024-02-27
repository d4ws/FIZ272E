clear all
clc


start(1) = 50;

i = 1;

while 1
  step = randi(2)-1;
  if step == 1
    start(i+1) = start(i) +1;


  else
    start(i+1) = start(i) -1;


  endif
  i = i+1;

  if start(i) == 100 || start(i) == 0
    break
  endif

end

countvec = 1:i;
plot(start , countvec)

disp("Toplam adım sayısı: ")
i
