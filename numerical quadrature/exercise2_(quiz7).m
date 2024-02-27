## -1 den 1e e^-xdx
clear all
clc
##### 2 point legendre

w1 = 1;
w2 = 1;

x1 = 1/sqrt(3);
x2 = -1/sqrt(3);

two_point = w1 * exp(-x1) + w2 * exp(-x2)

##### 3 point legendre

w1 = 5/9;
w2 = 8/9;
w3 = 5/9;

x1 = sqrt(3/5);
x2 = 0;
x3 = -sqrt(3/5);

three_point = w1 * exp(-x1) + w2 * exp(-x2) + w3 * exp(-x3)

##### 4 point legendre

w1 = (18 + sqrt(30)) / 36;
w2 = (18 + sqrt(30)) / 36;
w3 = (18 - sqrt(30)) / 36;
w4 = (18 - sqrt(30)) / 36;

x1 = sqrt((3/7)-(2/7)*sqrt(6/5));
x2 = -sqrt((3/7)-(2/7)*sqrt(6/5));
x3 = sqrt((3/7)+(2/7)*sqrt(6/5));
x4 = -sqrt((3/7)+(2/7)*sqrt(6/5));


four_point = w1 * exp(-x1) + w2 * exp(-x2) + w3 * exp(-x3) + w4 * exp(-x4)

##### 5 point legendre

w1 = 128/225;
w2 = (322 + 13*sqrt(70)) / 900;
w3 = (322 + 13*sqrt(70)) / 900;
w4 = (322 - 13*sqrt(70)) / 900;
w5 = (322 - 13*sqrt(70)) / 900;


x1 = 0;
x2 =  1/3 * sqrt(5 - 2*sqrt(10/7));
x3 = -1/3 * sqrt(5 - 2*sqrt(10/7));
x4 = 1/3 * sqrt(5 + 2*sqrt(10/7));
x5 = -1/3 * sqrt(5 + 2*sqrt(10/7));


five_point = w1 * exp(-x1) + w2 * exp(-x2) + w3 * exp(-x3) + w4 * exp(-x4) + w5 * exp(-x5)

