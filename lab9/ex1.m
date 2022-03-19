

x = [1, 3, 5, 7, 5, 4, 2];
h = [0.1, 0.3, 0.1];

[a, N] = size(x);
[b, M] = size(h);

y = zeros(N - M + 1, 1);

y = conv(h, x);

#figure;
#plot(y);

N = 64;
f = 3000;
fs = 64000;
h = [0.1, 0.2, 0.2, 0.2, 0.1];


s = zeros(1, N);
for i = 1:N
    s(i) = sin(4*pi*f*i);
end

[a, N] = size(s);
[b, M] = size(h);

y = conv(h, s);

#figure;
#stem(y);

x2 = [0, 0, 0, 0, 1, 0, 0, 0, 0];
y = conv(h, x2);

#figure;
#stem(y);