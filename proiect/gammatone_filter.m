function X = JM_FILTER(x)
 
r=2;
N=length(x);
V=N/r;
X=zeros(N);
a=zeros(V);
y=zeros(V+2);
q=r-1;

for k=(r-1)*V:N
  v=k-(r-1)*V;


  sum1=0;
for p=0:V-1
  
 
 a(p)=0;
for m=0:r-1
  a(p)=a(p)+x(m*V+p)*exp(-2*pi*(m*v)/r);
  
endfor
y(p+2)=2*cos(2*pi*k/N)*y(p+1) - y(p) +a(p);


%sum1=sum1+exp(-2*pi*mod(p*(q*V+v),N)/N)*a(p);
endfor



X(k)=exp(-2*pi*k/r) * (exp(2*pi*k/N )*y(V-1) - y(V-2));
endfor


endfunction
