 function[maxel,minel,ave , standev , closest_to_av] = findeverything(myvector)

N = size(myvector,2);

maxel = max(myvector);
minel = min(myvector);
ave = sum(myvector)/N;


toplam =0;
for i = 1:N
  toplam = (myvector(i)-ave)^2;
endfor

standev = sqrt(toplam/N);





closest_to_av = myvector(1) ;

for i=2:N
  oncekifark=abs(myvector(i-1)-ave);
  simdikifark=abs(myvector(i)-ave);
  if simdikifark < oncekifark
    closest_to_av = myvector(i);
  endif
endfor





