clear all
clc

x = 2;
ans = 0;

xvec = [0,1,3,5];
fvec = [-16, -3, -17, 41];

for j=1:4
lambda(j) = 1;
endfor

for i=1:4
  for j=1:4
    if i~=j

      lambda(i) = lambda(i) * ((x-xvec(j))/(xvec(i)-xvec(j)));

    endif
  endfor

  ans += fvec(i)*lambda(i);
endfor


disp(ans)
