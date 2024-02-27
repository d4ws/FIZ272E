clear all
clc

tries =1;
while 1

  x=randi(7);
  y=randi(7);
  z=randi(7);

  if x*y*z == 3*5*7
    break
  else
    tries = tries +1;
  endif
end
tries
