
  fa  = 1;
  N_analog = 5000;
  t = linspace(0, 5, N_analog);
  analog = sin(2 * pi * t);

  plot(t, analog);

  N_digital = 50;

  digital= zeros(1,N_analog);

  for i = 1 : N_digital
    digital(i * 100) = analog(i * 100);
  endfor

  hold on;
  plot(t, digital);
  figure


  N_sinc = N_analog;
  f_s=10;
  t_sinc = linspace(-0.2, 0.2, N_sinc/10);
  sincvec = sinc(f_s*t_sinc);
  s_cont_filtered = conv(analog, sincvec);

  plot(s_cont_filtered);

