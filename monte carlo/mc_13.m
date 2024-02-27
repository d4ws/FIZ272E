clear all
clc


par_x(1) = 0;
par_y(1) = 0;
i = 1;

while 1

  move_x = (1-(-1))*rand()+(-1);
  move_y = (1-(-1))*rand()+(-1);
  par_x(i+1) = par_x(i) + move_x;
  par_y(i+1) = par_y(i) + move_y;
  i = i+1;
    if par_x(i) > 10 || par_x(i)< -10
      break


    elseif par_y(i) > 10 || par_y(i) < -10

      break
    endif


endwhile
disp("x lcoation")
disp(par_x(i))
disp("y lcoation")
disp(par_y(i))
disp("geçen saniye")
disp(i)

##plot(par_x , par_y )

