  
  N = 10
  ft = 400;
  f1 = 3* ft;
  f2 = 4* ft;
  T = 1/ft;

  values = randi(4, 1, N);
  values-=1;

  t = 0:T/ft:T;

  s1 = sin(2 * pi * f1 * t);
  s2 = sin(2 * pi * f2 * t);
  s = s1 + s2;
  y = 0;

  for i = 1:N
    switch (values(i))
      case 0
        y = [y, 0 ];
      case 1
        y = [y, s1];
      case 2
        y = [y, s2];
      case 3
        y = [y, s];
    endswitch
  endfor

 
  plot(s1);
  hold on;
  plot(s2);
  hold on;
  plot(s);
  hold on;
  plot(y);


