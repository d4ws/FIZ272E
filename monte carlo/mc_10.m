clear all
clc
cube = [-4 , -3 ,-1,1,2,4];

jwin =0;
twin=0;
total_game = 0;


% play the game 10000 times see who wins more

while total_game < 10000
  J = 0;
  T = 0;

##  disp("Jon got:")
  for i = 1:3
    x = randi(6);

##    disp(cube(x))
    J = J + cube(x);
  endfor

  if J == 0
    jwin= jwin +1;
    total_game = total_game +1;

  endif

##  disp("Tyrion got")
  for i = 1:3
    y = randi(6);

##    disp(cube(y))
    T = T + cube(y);
  endfor

  if T == 0
    twin = twin +1;
    total_game = total_game +1;

  endif

end

jwin
twin

