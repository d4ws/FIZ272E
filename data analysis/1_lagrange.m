clear
clc


vals = dlmread("C:/Users/mamie/octave/data analysis/weatherinistanbul.txt");

xdata = vals(:,1);
ydata = vals(:,2);
N = length(xdata);
z = zeros(1,365);

for days= 1:365
  lambda = ones(1, N);
  for i=1:N
    for j=1:N
      if i~=j

        lambda(i) = lambda(i) * ((days-xdata(j))/(xdata(i)-xdata(j)));

      endif
    endfor

   z(days)= z(days) + ydata(i)*lambda(i);

  endfor
endfor


days = (1:365);

plot(xdata,ydata, "*", days, z)
