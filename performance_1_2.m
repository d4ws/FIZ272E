clear all
clc

tic;
for n=1:8
  N = 10^n;
  v = rand(1,N);

  kaceleman = 0;
  if sum(v>0.5)
    kaceleman = kaceleman + 1 ;
  endif
  time1 = toc


end


plot(time1 , 1:8)











