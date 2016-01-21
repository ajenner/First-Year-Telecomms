sc = figure ('name', 'Sawtooth waves - freq');
figure(sc);
y = 0;

for k = 1
    A = ((-1).^k)*(2/(pi*k));
end
subplot(3,2,1)
stem(k,A)
hold on
title('Approximation with 1 sine function')


A = zeros(1,3);
for k = 1:3; 
    A(1,k) = ((-1).^k)*(2/(pi*k));
end
subplot(3,2,2)
k = 1:1:3
stem(k,A)
hold on
title('Approximation with 3 sine functions')


A = zeros(1,5);
for k = 1:5; 
    A(1,k) = ((-1).^k)*(2/(pi*k));
end
subplot(3,2,3)
k = 1:1:5;
stem(k,A)
hold on
title('Approximation with 5 sine functions')


A = zeros(1,10);
for k = 1:10; 
    A(1,k) = ((-1).^k)*(2/(pi*k));
end
subplot(3,2,4)
k = 1:1:10;

stem(k,A)
hold on
title('Approximation with 10 sine functions')


A = zeros(1,50);
for k = 1:50; 
    A(1,k) = ((-1).^k)*(2/(pi*k));
end
subplot(3,2,5)
k = 1:1:50;
stem(k,A)
hold on
title('Approximation with 100 sine functions')

A = zeros(1,500);
for k = 1:500; 
    A(1,k) = ((-1).^k)*(2/(pi*k));
end
subplot(3,2,6)
k = 1:1:500;
stem(k,A)
hold on
title('Approximation with 500 sine functions')