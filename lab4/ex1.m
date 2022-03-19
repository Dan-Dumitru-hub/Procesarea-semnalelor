
  T = 100;
  A = 1;
  s = zeros(T);
  s1 = zeros(T);
  for t = 1:T/2
    s(t) = A ;
    s1(t) = A ;
  endfor
  
  for t = T/2:T
    s(t) = -A ;
    s1(t) = -A;
  endfor

#  plot(1:T, s);

  K = 81;

  c = zeros(1, 2 * K + 1);
  c1 = zeros(1, 2 * K + 1);
   for k = -K:K
     if (mod(k, 2) == 0)
       c(k + K + 1) = 0;
     else
        c(k + K + 1) = 2 * A / (j * pi * k);
            
     endif
    end
  

#  stem([-K:K], abs(c));



  for k = -K:K
    c1(k + K + 1) = c(k + K + 1) * exp(-1 * j * pi * k / 2);
  endfor
  

# stem([-K:K], abs(c1));

  for t = 1:T
    for k = -K:K
      
      s(t) = s(t) + c(k + K + 1) * exp(j * 2 * pi * k * t/T);
      
      s1(t) = s1(t) + c1(k + K + 1) * exp(j * 2 * pi * k * t/T);
    endfor
   endfor
   
  
  plot(1:T, s);
  hold on;
  plot(1:T, s1);
  

  