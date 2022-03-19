
%p1

  T = 100;
  A = 1;
  for t = 1:T/2
    s(t) = A ;
  endfor
  
  for t = T/2:T
    s(t) = -A ;
  endfor
  
  
  #plot(1:T, s);
  ylim([-A-1 A+1]);
  
%p2

  K = 500;
  c = zeros(1, K);
        for k = 0:K
          if (mod(k, 2) == 0)
            c(k + 1) = 0;
           else 
              c(k + 1) = 2 * A / (j * pi * k);
           endif
        end
  

  c1=c(1);

  #stem(abs(c));
 
%p3 
 
  minrms = 0;
 
  for N = 1:K
  sum = 0;
    for k = 2:N
      sum = sum + abs(c(k)) * abs(c(k));
    endfor

    rms(N) = sqrt(A**2 - 2 * sum - abs(c1)* abs(c1));

    if rms(N) < 0.05 && minrms == 0
      minrms = N;
    endif
  endfor

  
  plot(rms);
  
  #semilogy(rms);
  
  #loglog(rms);
   
%p4

  s = zeros(1, T);
  s2 = zeros(1, T);
  
  K = minrms;

  
    c = zeros(1, 2*K + 1);
        for k = -K:K
          if (mod(k, 2) == 0)
            c(k + K + 1) = 0;
           else
              c(k + K + 1) = 2 * A / (j * pi * k);
            
           endif
        end
  
  
  for t = 1:T/2
    s(t) = A ;
    for k = -K:K
      s2(t) = s2(t) + c(k + K + 1) * exp(j * 2 * pi * k * t/T);
    endfor
  endfor
  
  for t = T/2:T
    s(t) = -A ;
    for k = -K:K
      s2(t) = s2(t) + c(k + K + 1) * exp(j * 2 * pi * k * t/T);
    endfor
  endfor
  
  
 # plot(1:T, s);
 # hold on;
  #plot(1:T, s2);