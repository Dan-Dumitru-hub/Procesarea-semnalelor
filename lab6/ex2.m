 
  S = load('noisy_sound.mat');
  s = S.noisy_sound;
  fs = S.fs;
  
  y = fft(s);
  
  figure;
  stem(abs(y));
  
  K= 500 * length(y) / 8000;
  

  for i = (K ):(length(y) - K )
    y(i) = 0;
  endfor
  
  
  y2 = ifft(y);
  
  figure;
  stem(y2);
  
  sound(y2);
  
  
  
  
  
  
  
  
  
  