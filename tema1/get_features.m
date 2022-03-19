function [filters, feat_train] = get_features(audio_train, fs, plot_figs)

[numar_ensantioane, numar_sunete] = size(audio_train);
feat_train=zeros(numar_sunete, 2 * 12);

 K=round(fs*25/1000);
 T=35/1000;
 M=12;
 
 F = round(numar_sunete/T)
 
 filters=zeros(K-1,M);
 filters_inverted=zeros(K-1,M);
 
 size = fs*25/1000;
 
 freqs=zeros(1,M+1);
 freqs=get_equal_bark_freqs(M,fs);
 
 for i = 1:M
   filters(:,i)=gammatone_filter(size,freqs(i),fs)';
   filters_inverted(:,i)=gammatone_filter(size,freqs(i),fs)'.^-1;
endfor

ferestre = zeros(F, K-1);
 for i = 1:F
      for j = 1: numar_sunete
        
        ferestre(i, j) = audio_train(i, j);
        
      endfor
    endfor
    
ferestre=ferestre * filters_inverted;

endfunction

