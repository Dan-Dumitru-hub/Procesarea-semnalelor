
clear all 
close all

% [audio_train,labels_train, audio_test,labels_test] = load_data();
load('data.mat')
plot_figs = true

M=12;

fc=1000;
size = fs*25/1000;

freqs=zeros(1,M+1);
freqs=get_equal_bark_freqs(M,fs);

#graficul1
h=gammatone_filter(size,fc,fs);
figure;
plot(1:size,h);



#graficul2
x = fs / size * linspace(0, size/2, size/2);
figure;
for i = 1:M
   h=gammatone_filter(size,freqs(i),fs);
   coefs = fft(h,size);
   hold on;
  
   plot(x, abs(coefs(1:size/2)));
  endfor

