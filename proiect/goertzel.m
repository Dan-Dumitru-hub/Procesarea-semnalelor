function X = goertzel(x,k)


n = length(x);

X = zeros(n,1); 

for j = 1:k
    
   
    
    s0 = 0;
    s1 = 0;
    s2 = 0;
    
    for ind = 1:n 
        s0 = x(ind) + (cos(2*pi*(k)/(n)) * 2)*s1 - s2;  
        
        s2 = s1;
        s1 = s0;
    end
   
    
    X(j) = s0 - s1*(exp(-1i*(2*pi*(k)/(n))));
end