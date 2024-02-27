clear all
clc

age = 25;
walk_chance = 50;
death_walk = 0.005;
death_subway = 0.002;
meet_woman_walk = 1;
meet_woman_subway = 0.5;
marry = 3;
days = 0;

while 1

  walk_or_subway = rand()*100;

  if walk_or_subway < walk_chance
##    walk
      death_chance = rand()*100;
      if death_chance<= death_walk
        ##die walk
        disp("died while walking at age");
        break
      else
        ##if not die
        meet_woman_chance = rand()*100;
        if meet_woman_chance <= meet_woman_walk
          ##meet the woman
          marry_chance = rand()*100;
          if marry_chance < marry
            ##marry
            disp("Married while walking at age");
            break
          endif
        endif
      endif

  else
      ##take subway
      death_chance = rand()*100;
      if death_chance<= death_subway
        ##die subway
        disp("died in subway at age");
        break
      else
        ## if not die
        meet_woman_chance = rand()*100;
        if meet_woman_chance <= meet_woman_subway
          ##meet the woman
          marry_chance = rand()*100;
          if marry_chance < marry
            ##marry
            disp("Married while using subway at age");
            break
          endif
        endif

      endif
  endif

  days = days + 1;
  if days >=365
    age = age+1;
  endif

endwhile

disp(age)









