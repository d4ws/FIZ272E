clear all

## integral 0 to 1 x^2dx using n=1000

##euler method

b = 1;
a = 0;
n= 1000;

deltax = (b-a)/n;

x = zeros(1,n+1);
result =0;
for i = 1:n+1
  x(i) = x(i)+ (a + (i-1)*deltax);

  result = result + deltax * x(i)^2;
end

##trapez method


toplam=0;
for i = 2:n

  toplam = toplam+x(i)^2;
end

resultt = ((x(1)^2 + x(n)^2)*deltax/2) + (toplam*deltax)


