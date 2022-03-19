
d=128
v=zeros(d-64);
v1=zeros(d-64);
v2=zeros(d-64);
for i=64:d
  if mod(i,2)!=0
    continue
  endif
x=ones(i,1);

t=cputime;
X=DITFFT(x);
v(i+1-64)=(cputime-t)*1000;

t1=cputime;
X1=JM_FILTER(x);
v1(i+1-64)=(cputime-t1)*1000;

t2=cputime;
X2=goertzel(x,i);

v2(i+1-64)=(cputime-t2)*1000;
%t2=cputime;


  #printf('Total cpu time: %f seconds DITFFT \n', cputime-t);
 # printf('Total cpu time: %f seconds JM_FILTER\n', cputime-t1);
 
  
  
 endfor
 #printf('%d',v(2))
 plot(v);
 hold on
 plot(v1);
 hold on
 plot(v2);
 legend( 'Line 1', 'Line 2', 'Line 3' );