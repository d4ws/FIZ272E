clear all
clc

day = 1;

init_money = 10^6;
toy_price = 10;
sell_price = 30;
num_of_stores = 10;
rank1_stores = 4;
rank2_stores = 3;
rank3_stores =3;

rank1_rent = 100; #per month
rank1_customers = 2000 ;#perday
rank2_rent = 75; #per month
rank2_customers = 1000 ;#perday
rank3_rent = 50; #per month
rank3_customers = 500 ;#perday

adv1_cost = rank1_rent /10 ;
adv2_cost = rank2_rent /10;
adv3_cost = rank3_rent /10;

adv=3;

income=0;
expenses=0;

while day<365

  customer_mind = rand();
  buy_chance = 0.05;

  if day>0 && day<355
    dayimportance =1;
  else
    dayimportance = 5;
  endif




  buy_chance = buy_chance * adv * dayimportance;


   for i = 1: rank1_customers
     if customer_mind < buy_chance
       income = income + sell_price - toy_price;
     else
       expenses = expenses + toy_price;
     endif
   customer_mind = rand();
   endfor

   for i = 1: rank2_customers
     if customer_mind < buy_chance
       income = income + sell_price - toy_price;
     else
       expenses = expenses + toy_price;
     endif
   customer_mind = rand();
   endfor

  for i = 1: rank3_customers
     if customer_mind < buy_chance
       income = income + sell_price - toy_price;
     else
       expenses = expenses + toy_price;
     endif
   customer_mind = rand();
   endfor













  day = day +1;

endwhile










