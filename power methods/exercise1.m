clc
## -1 ve -2 özdeğerler
## -1'e gelen özvektör  (r,-r)
## -2'ye gelen özvektör (r,-2r)
## v için üretilen sayılar denklemi sağlayan rastegele sayılar

A = [0,1;-2,-3];

[v,d] = eig(A)
