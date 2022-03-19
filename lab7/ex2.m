  load('notes_signal.mat');

  #figure;
  #coef=fft(notes_signal);
  
  plot(notes_signal);
  
  coef = fft(notes_signal);
  N = length(coef);
  #x = fs / N * linspace(-N/2, N/2, N);

  dx = (N/2-(-N/2))/(N-1);
  for i = 0:N-1
x(i+1) = (-N/2 + dx*i)*fs / N;
end
  
  
  figure;
  stem(x, abs(fftshift(coef)));

  notes_signal = hamming(length(notes_signal))' .* notes_signal;

  figure;
  plot(notes_signal);

  coef1 = fft(notes_signal);
  N = length(coef1);
  x = fs / N * linspace(-N/2, N/2, N);

  figure;
  stem(x, abs(fftshift(coef1)));

