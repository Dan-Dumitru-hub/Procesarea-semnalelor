function X = JM_FILTER(x)
 
r=2;
N=length(x);
V=N/r;
X=zeros(N);
a=zeros(V);
y=zeros(V);
q=r-1;

for i=1:r-1
for k=i*V:V*(i) #V*(i+1)
  v=k-i*V;
  q=i;


  y=ones(V,1);
  for p=0:V-1
    
   
   a(p+1)=0;
    for m=0:r-1
      a(p+1)=a(p+1)+x(m*V+p+1)*exp(-2i*pi*(m*v)/r);
      
    endfor
    if p+1>2
    y(p+1)=2*cos(2*pi*k/N)*y(p) - y(p-1) +a(p+1);
  endif
  
  if p+1==2
    y(p+1)=2*cos(2*pi*k/N)*y(p)  +a(p+1);
  endif
  
  if p+1==1
    y(p+1)=a(p+1);
  endif


  %sum1=sum1+exp(-2*pi*mod(p*(q*V+v),N)/N)*a(p);
  endfor


  X(k+1)=exp(-2i*pi*k/r) * (exp(2i*pi*k/N )*y(V-1) - y(V-2));
endfor
endfor

endfunction
