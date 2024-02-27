clear all
clc
dice = [1,2,3,4,5,6];
path= [zeros(1,110)];
while sum(path) ~= 3
  hole1 = randi([2,99]);
  path(hole1) = 1;
  hole2 = randi([2,99]);
  path(hole2) = 1;
  hole3 = randi([2,99]);
  path(hole3) = 1;
endwhile

p1(1) = 1;
p2(1) = 1;
i = 1;

while 1
  p1_move = dice(randi(6));
  p2_move = dice(randi(6));
  p1(i+1) = p1(i) +p1_move;

  if path(p1(i+1))==1
    p1(i+1) =path(1)+1;
  else
    if p1(i+1) >= 100
    disp("p1 wins")
    break
  endif
  endif

  p2(i+1) = p2(i) +p2_move;

  if path(p2(i+1))==1
    p2(i+1) =path(1)+1;
  else
    if p2(i+1) >= 100
    disp("p2 wins")
    break
  endif
  endif
  i = i +1;
endwhile
p1
p2
