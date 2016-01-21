sc = figure ('name', 'Square waves');
figure(sc);
x = -1 : .01 : 1;
y = 0;

for k = 1
    A = 4/(pi*k);
end
subplot(3,2,1)
stem(k,A)
hold on
title('Approximation with 1 sine function')


A = zeros(1,3);
f = 1
for n = 1:2:5; 
    A(1,f) = 4 / (pi*n);
    f = f +1;
end
subplot(3,2,2)
k = 1:1:3
stem(k,A)
hold on
title('Approximation with 3 sine functions')


A = zeros(1,5);
f = 1
for n = 1:2:9; 
    A(1,f) = 4 / (pi*n);
    f = f +1;
end
subplot(3,2,3)
k = 1:1:5;
stem(k,A)
hold on
title('Approximation with 5 sine functions')


A = zeros(1,10);
f = 1
for n = 1:2:19; 
    A(1,f) = 4 / (pi*n);
    f = f +1;
end
subplot(3,2,4)
k = 1:1:10;

stem(k,A)
hold on
title('Approximation with 10 sine functions')


A = zeros(1,50);
f = 1
for n = 1:2:99; 
    A(1,f) = 4 / (pi*n);
    f = f +1;
end
subplot(3,2,5)
k = 1:1:50;
stem(k,A)
hold on
title('Approximation with 100 sine functions')

A = zeros(1,500);
f = 1
for n = 1:2:999; 
    A(1,f) = 4 / (pi*n);
    f = f +1;
end
subplot(3,2,6)
k = 1:1:500;
stem(k,A)
hold on
title('Approximation with 500 sine functions')