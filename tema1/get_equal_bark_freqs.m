function freqs = get_equal_bark_freqs(M,fs)

min=6*asinh(0);
max=6*asinh(fs/2/600);

s=linspace(min,max,M+1);

for i = 0:M-1
  freqs(i+1)=600 * sinh(s(i+1)/6);
  
endfor


endfunction

