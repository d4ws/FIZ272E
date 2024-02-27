clear all
clc

x = input("Enter: ");

fact =1;
i = 1;

while 1  % sonsuz döngü
  fact =fact*i;
  i += 1;
  if i > x
    break
  endif

end

disp(fact)



