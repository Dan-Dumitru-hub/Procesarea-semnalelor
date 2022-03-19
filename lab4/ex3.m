
  T = 128;
  fc = 20/T;
  a = 0.05;
  s = zeros(T);
  x = zeros(T);
  
  for t = 1:T
    s(t) = exp(-1 * j * a * t);
  endfor
  

# plot(1:T, s);
   
#  h = figure;

  fx = zeros(1, T);
  findex = T/2*linspace(0,1,T/2);
  fx((T/2)+1:end) = findex;
  fx(1:T/2) = [-T/2, -findex(end:-1:2)];
  fs = fft(s);
  
#  stem(abs(fftshift(fs)));
#  xlabel('Frequency component (k)');
#  ylabel('Magnitude of component');
#  title('Fourier coefficients before amplitude modulation');
  
  for t = 1:T
    x(t) = (1 + s(t)) * cos(2 * pi * fc * t);
  endfor
  

#  h = figure;

  fx = zeros(1, T);
  findex = T/2*linspace(0,1,T/2);
  fx((T/2)+1:end) = findex;
  fx(1:T/2) = [-T/2, -findex(end:-1:2)];
  fs = fft(x);
  
  stem(abs(fftshift(fs)));
  xlabel('Frequency component (k)');
  ylabel('Magnitude of component');
  title('Fourier coefficients before amplitude modulation');


  
  
  
    