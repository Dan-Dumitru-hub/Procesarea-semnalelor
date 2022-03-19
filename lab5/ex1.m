
  v = [1, 2, 10, 20, 100];
  t = zeros(1,128);
  for i = 2 : 128
    t(i) = t(i-1) + 1/128 ;
  endfor
  N = 128;
  

  y(1:5, 1:N) = 0;

 
    y(1, 1:N) = sin(2 * pi * v(1) * t');
    y(2, 1:N) = sin(2 * pi * v(2) * t');
    y(3, 1:N) = sin(2 * pi * v(3) * t');
    y(4, 1:N) = sin(2 * pi * v(4) * t');
    y(5, 1:N) = sin(2 * pi * v(5) * t');
    
 

  y1(1:5, 1:4) = 0;

  for i = 1 : 5
    for j = 5:N
      y1(i, j) = (y(i, j-4) + y(i, j-3) + y(i, j-2) + y(i, j-1) + y(i, j) ) *0.2;
    endfor
  endfor

  for i = 1 : 5
    figure
    plot(t, y(i, 1:N));
    hold on
    plot(t, y1(i, 1:N));
    
  endfor


