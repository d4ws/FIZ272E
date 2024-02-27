clear all
clc

lambda = 0.0008675;
N(1) = 100;
i = 1;
while N > 0
  decay = rand();

  if decay < lambda
    N(i+1) = N(i) -1 ;
  else
    N(i+1) = N(i);
  endif
  i = i +1;


endwhile

stepvec = 1:i ;

plot(stepvec , N , "-b")
