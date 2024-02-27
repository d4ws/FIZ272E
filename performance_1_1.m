N1 = 10^6 ;

v = rand(1,N1) ;

x =0 ;

tic;
for i=1:N1
  if v(i) > 0.5
    x = x + 1;           %yavaş
  endif
endfor


time1 = toc % ~2sn


tic;



y= 0 ;
tic;                            %hızlı

if sum(v>0.5)
  y = y +1 ;
endif
time2 = toc % ~0.005sn


plot(time1,1:6, "-c", time2 , 1:6)
