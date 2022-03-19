
  load('notes_signal_long.mat');
  N = length(notes_signal);
  figure;
  plot(notes_signal);

  coef = fft(notes_signal);

  x = fs / N * linspace(-N/2, N/2, N);


  notes_signal = hamming(N)' .* notes_signal;
  figure;
  plot(notes_signal);
  coef1 = fft(notes_signal);
  N = length(notes_signal);
  x = fs / N * linspace(-N/2, N/2, N);

  figure;
  stem(x, abs(fftshift(coef1)));

  
  #sound(notes_signal);
  
  #rtl rts signal processing