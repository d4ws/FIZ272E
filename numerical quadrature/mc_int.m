clear all
clc

b = 5;
a = 1;
N = 10^5;

## monte carlo method
summ = 0;
for i = 1:N
  x=(b-a)*rand()+a; #a,b arası random sayı
  summ = summ + exp(x);
endfor

yuks = summ / N; ## <f>

monte = (b-a) * yuks

## hizli monte

x = (b-a)*rand(1,N)+a;
f = exp(x);
hizli_monte = (b-a)*sum(f)/N


## euler method
deltax = (b-a)/N;

x=linspace(a,b,N);

euler =0;
for i = 1:N-1
  euler = euler + deltax * exp(x(i));
end
euler

#### trapez

toplam = 0;

for i = 2:N-1
  toplam = toplam+exp(x(i));
end

trapez = ((exp(x(1)) + exp(x(N)))*deltax/2) + (toplam*deltax)

