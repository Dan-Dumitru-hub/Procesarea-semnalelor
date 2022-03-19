
  T = 100;
  A = 1;
  s = zeros(T);
  Delta=20;

  
  for t = 1:T/2
    
    if (t > Delta && t < 2*Delta)
      s(t) = A ;
    endif
  endfor
    for t = T/2:T
    
    if (t > Delta && t < 2*Delta)
      s(t) = -A ;
    endif
  endfor
  

# plot(1:T, s);



  K = 31;

 
    c = zeros(K);
    c1 = zeros(K);
    c2 = zeros(K);
    c3 = zeros(K);
    
    for k = 0:(K - 1)
      c(k + 1) = A *Delta / 100 * exp(-1 * j * pi * k *Delta/100 ) * sinc(pi * k *Delta /100);
    endfor
  

#  stem(abs(c));
  

  s1 = zeros(T);
  s2 = zeros(T);
  s3 = zeros(T);

  f1 = 0.1/T;
  f2 = 1/T;
  f3 = 10/T;
  
  for k = 0:K-1
    c1(k + 1) = 1 / (1 + j * (1 / f1) * ((k + 1)/T)) * c(k + 1);
    
    c2(k + 1) = 1 / (1 + j * (1 / f2) * ((k + 1)/T)) * c(k + 1);
    
    c3(k + 1) = 1 / (1 + j * (1 / f3) * ((k + 1)/T)) * c(k + 1);
  endfor
  

#  stem(abs(c1));
#  stem(abs(c2));
#  stem(abs(c3));



  for t = 1:T
    for k = (-K + 1):(K - 1)
      if k < 0
        s1(t) = s1(t) + conj(c1(-k + 1)) * exp(j * 2 * pi * k * t/T);
        
        s2(t) = s2(t) + conj(c2(-k + 1)) * exp(j * 2 * pi * k * t/T);
        
        s3(t) = s3(t) + conj(c3(-k + 1)) * exp(j * 2 * pi * k * t/T);
      else
        s1(t) = s1(t) + c1(k + 1) * exp(j * 2 * pi * k * t/T);
        
        s2(t) = s2(t) + c2(k + 1) * exp(j * 2 * pi * k * t/T);
        
        s3(t) = s3(t) + c3(k + 1) * exp(j * 2 * pi * k * t/T);
      endif
    endfor
   endfor
  

  #plot(1:T, s);
  
  #plot(1:T, s1);
 
  #plot(1:T, s2);
  
   plot(1:T, s3);
  