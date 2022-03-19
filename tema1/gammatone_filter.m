function h = gammatone_filter(size, fc, fs)
 for n = 1:size
t=n/fs;
a=power(fc,2.5);
b=1.019 * 24.7 * (4.37 * fc/1000 +1);
h(n)=a * power(t,3) * exp(-2*pi*b*t)*cos(2*pi*fc*t);
endfor
endfunction