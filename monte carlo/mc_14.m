clear all
clc

path = [1,3,2,3,3,1,2,2,4,4,2,4,4,4,1,1,4,4,2,3,3,3,1,1,3] ;
distance = 1;
health= 80;
i = path(1);
step = 0;
while 1
  pick = randi(4);


  if  pick == path(i)
    distance = distance + 1;
    health = health -1;
    step += 1;
    i += 1;

  else
    health = health -1;
    step += 1;
  endif


  if health <= 0
    disp("Chopper on the way");
    break
  elseif health >0 && distance == length(path)
    disp("mission succesfull")
    break
  endif


end
