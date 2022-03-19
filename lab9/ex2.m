N = 256;
plot1 = linspace(0, 1, N);

HK = ones(1, N);
HK(17:N-16) = 0;

figure;
plot(plot1, HK);

hk = ifftshift(ifft(HK));

figure;
stem(real(hk));

L = 65;
[N, M] = max(hk);

trunc = hk(M - 32: M + 32);

figure;
stem(trunc);

trunc_dft = fft(trunc);
plot2 = linspace(0, 1, L);

figure;
plot(plot2, abs(trunc_dft));

blck = trunc * blackman(L);

figure;
plot(plot2, abs(fft(blck)));

N = 64;
f = 3000;
fs = 64000;

s = zeros(1, N);
for i = 1:N
    s(i) = sin(4*pi*f*i);
end

res = conv(s, blck);

figure;
stem(res);