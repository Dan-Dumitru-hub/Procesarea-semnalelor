
  load('noisy_signal.mat')
  N = 128;

  K = 10;
  
  s = zeros(1, N);
  

    for n = 1:N
      for k = 1:K
      s(k) = s(k) + noisy_signal(n) * exp(-j * 2 * pi * n  * k  / N);
    endfor
  endfor
  
  sfft = fft(noisy_signal);
  
  ps = 0;
  pz = 0;
  
  for i = 1:N  
    pz = pz + abs(s(i))*abs(s(i));  
  endfor
  
  for i = 1:K
     ps = ps + abs(s(i))*abs(s(i)); 
  endfor
  
  SNRdb = 10 * log10( ps / pz);
  
  for i = (K ):(N - K )
    sfft(i) = 0;
  endfor
  
  sf = zeros(1, N);
  
   for n = 1:N
    for k = 1:K
      sf(n) = sf(n) + 1/N * s(k) * exp(j * 2 * pi * n * k / N);
    endfor
  endfor 
  
  plot(1:N, sf);
  hold on;
  plot(1:N, ifft(sfft));
  
  
  
  
  