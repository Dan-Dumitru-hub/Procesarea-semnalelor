function X = DITFFT(x)
 
r=2;
N=length(x);
 #printf('Total N time: %f seconds DITFFT \n',N);
V=N/r;
X=zeros(N);
for v=0:V-1
  for q=0:r-1
    
      sum1=0;
        for p=0:V-1
 
          sum2=0;
          for m=0:r-1
            sum2=sum2 + x(m*V+p+1) *exp(-2*pi*mod(m*v*V,N)/N);
  
          endfor
          sum1=sum1 + exp(-2*pi*mod(p*(q*V+v),N)/N)*sum2;
        endfor

     #printf('Total P time: %d seconds DITFFT \n',p);
     #printf('Total Q time: %d seconds DITFFT \n', q);
      # printf('Total sum time: %d seconds DITFFT \n', sum1);
     
   X(q*V+v+1)=sum1 ;
   endfor

endfor
endfunction
