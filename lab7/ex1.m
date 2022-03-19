
  A1 = 1;
  A2 = 0.5;
  fs = 8000;
  f1 = 1000;
  f2 = 2000;
  N = 8;
  n = 0:N-1;

for i=0:N-1
  
  s(i+1) = A1 * sin(2 * pi * f1 * i/fs) + A2 * sin(2 * pi * f2 * i/fs);
  
endfor

 coef = fft(s);
#figure;
  x = fs / N * linspace(-N/2, N/2, length(s));
  #stem(x, abs(fftshift(coef)));

  K = 64;
s2=zeros(1,N+K);
for i=0:N-1
  
  s2(i+1) = A1 * sin(2 * pi * f1 * i/fs) + A2 * sin(2 * pi * f2 * i/fs);
  
endfor
  coef = fft(s2);
figure;
  x = fs / N * linspace(-N/2, N/2, length(s2));
  stem(x, abs(fftshift(coef)));

