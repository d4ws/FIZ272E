%dünyaya düşen bir meteor trye kaç yılında çarpar

clear all
clc

year = 2023;

while 1

  impact = rand();
  latitude = (90-(-90))*rand()+(-90);
  longitude = (180-(-180))*rand()+(-180);

  if  impact  <= 0.002
    if  latitude>=36 && latitude<42 && longitude>=26 && longitude <=45
         break
    endif


  else
    year = year +1;
  endif

end
year
