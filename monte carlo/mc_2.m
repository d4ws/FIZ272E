clear all
clc

N= 150
childrens = (1:N)
escaped = 0;
catch_count =0;
shorts = 0;

for i = 1:N
  catched = rand();
  height = (170-100)*rand()+100;  # 100 ile 170 arası reel sayılar
  childrens(i) = height;          #children vektörünün elemanlarını boylarla değiştir
  if childrens(i) > 120;
    escaped = escaped + 1;
  else
    shorts = shorts + 1;
  endif
  if catched < 0.2
    escaped = escaped -1;
    catch_count = catch_count +1;
  endif
endfor



disp("Kaçanlar:")
disp(escaped)
disp("Yakalananlar:")
disp(catch_count)
disp("Boyu yetmeyenler:")
disp(shorts)
