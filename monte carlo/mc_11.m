clear all
clc

H(1) = 10000;
O(1)  = 10000;
h20(1) = 0;
step = 1;

while h20 < 5000

  prob = rand();
  water_chance = H(step)/O(step);

  if prob < water_chance
    h20(step+1) = h20(step) +1;
    H(step+1) = H(step)-2;
    O(step+1) = O(step)-1;

   else
    H(step+1) = H(step);
    O(step+1) = O(step);
    h20(step+1) = h20(step);
  endif
  step = step+1;


end
stepvec = 1:step;
plot(stepvec , H , stepvec, O , stepvec , h20)

