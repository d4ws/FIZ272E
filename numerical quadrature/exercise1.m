clear all
clc

## integral 3 to 5 (e^-x)dx using N=1000 results is 0.43

##eulerr method

b = 5;
a = 3;
N= 2000;


deltax = (b-a)/N; #0.001

x=linspace(a,b,N);

eulerr =0;
for i = 1:N-1
  eulerr = eulerr + deltax * exp(-x(i));
endfor
eulerr

#####trapez method
toplam=0;
for i = 2:N-1
  toplam = toplam + exp(-x(i));
end

trapez = ((exp(-x(1)) + exp(-x(N)))*deltax/2) + (toplam*deltax)

##### monte
Nvec = [10,100,1000,10000];

# N = 10
x = (b-a)*rand(1,Nvec(1))+a;
f = exp(-x);
monte1 = (b-a)*sum(f)/Nvec(1)

### N = 100
##x = (b-a)*rand(1,Nvec(2))+a;
##f = exp(-x);
##monte2 = (b-a)*sum(f)/Nvec(2)
##
### N = 1000
##x = (b-a)*rand(1,Nvec(3))+a;
##f = exp(-x);
##monte3 = (b-a)*sum(f)/Nvec(3)
##
### N = 10000
##x = (b-a)*rand(1,Nvec(4))+a;
##f = exp(-x);
##monte4 = (b-a)*sum(f)/Nvec(4)
##
##plot(Nvec,[monte1,monte2,monte3,monte4])




