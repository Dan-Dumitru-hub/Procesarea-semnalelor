fs=3000
N=256
b = fir1(round(N)-1, 1/fs,'low')


[H, freq] = freqz(b,1,N, fs);
figure;
plot(freq, abs(H));
xlabel('Frequency (Hz)');
ylabel('Frequency response');