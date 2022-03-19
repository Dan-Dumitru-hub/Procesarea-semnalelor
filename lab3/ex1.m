
%p1
  T = 100;
  A = 3;
  for t = 1:T/2
    s(t) = A ;
  endfor
  
  for t = T/2:T
    s(t) = -A ;
  endfor
  
  
  #plot(1:T, s);
  #ylim([-A-1 A+1]);

%p2

  K = 3;

  c = zeros(1, 2*K + 1);
   for k = -K:K
     if (mod(k, 2) == 0)
       c(k + K + 1) = 0;
       else
        c(k + K + 1) = 2 * A / (j * pi * k);
     endif
 end
  

 stem([-K:K], abs(c));
 
%p3
    
  sum = zeros(1, T);
  
  for t = 1:T
    for k = -K:K
      sum(t) = sum(t) + c(k + K + 1) * exp(j * 2 * pi * k * t/T);
    endfor
  endfor
 
 
 
#p4
  
  #plot(1:T, sum);
  
%p5
    
  s1 = zeros(1, T);
  s2 = zeros(1, T);
  
  
  K1 = 15;
  K2 = 20;
 
  
 c1 = zeros(1, 2*K1 + 1);
   for k = -K1:K1
     if (mod(k, 2) == 0)
       c1(k + K1 + 1) = 0;
       else
        c1(k + K1 + 1) = 2 * A / (j * pi * k);
       
     endif
 end
 
  c2 = zeros(1, 2*K2 + 1);
   for k = -K2:K2
     if (mod(k, 2) == 0)
       c(k + K2 + 1) = 0;
       else
        c(k + K2 + 1) = 2 * A / (j * pi * k);
      
     endif
 end
  
  
  for t = 1:T
    for k1 = -K1:K1
      s1(t) = s1(t) + c1(k1 + K1 + 1) * exp(j * 2 * pi * k1 * t/T);
    endfor
    for k2 = -K2:K2
      s2(t) = s2(t) + c2(k2 + K2 + 1) * exp(j * 2 * pi * k2 * t/T);
    endfor
  endfor
  
  
  plot(1:T, s1);
  hold on;
  plot(1:T, s2);
  