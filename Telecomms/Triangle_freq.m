sc = figure ('name', 'Triangle waves - freq');
figure(sc);
y = 0;

for k = 0
    A = ((-1).^k)*(8/((pi.^2)*((2*k+1).^2)));
end
subplot(3,2,1)
stem(k,A)
hold on
title('Approximation with 1 sine function')


A = zeros(1,3);
for k = 0:2; 
    A(1,k+1) = ((-1).^k)*(8/(((pi).^2)*((2*k+1).^2)));
end
subplot(3,2,2)
k = 0:1:2
stem(k,A)
hold on
title('Approximation with 3 sine functions')


A = zeros(1,5);
for k = 0:4; 
    A(1,k+1) = ((-1).^k)*(8/((pi.^2)*((2*k+1).^2)));
end
subplot(3,2,3)
k = 0:1:4;
stem(k,A)
hold on
title('Approximation with 5 sine functions')


A = zeros(1,10);
for k = 0:9; 
    A(1,k+1) = ((-1).^k)*(8/((pi.^2)*((2*k+1).^2)));
end
subplot(3,2,4)
k = 0:1:9;

stem(k,A)
hold on
title('Approximation with 10 sine functions')


A = zeros(1,50);
for k = 0:49; 
    A(1,k+1) = ((-1).^k)*(8/((pi.^2)*((2*k+1).^2)));
end
subplot(3,2,5)
k = 0:1:49;
stem(k,A)
hold on
title('Approximation with 100 sine functions')

A = zeros(1,500);
for k = 0:499; 
    A(1,k+1) = ((-1).^k)*(8/((pi.^2)*((2*k+1).^2)));
end
subplot(3,2,6)
k = 0:1:499;
stem(k,A)
hold on
title('Approximation with 500 sine functions')