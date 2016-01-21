sc= figure ('Name','Multi-plots - sine sum');
figure (sc)
n = 5;
A = [1 0 0.33 0 0.2];
x = linspace(0, 3, 1000);
y=0;
y1=0;
y3 = 0;
y5 = 0;
y = sine_sum( n, A, x );

subplot(3,5,[2,3,4,5,7,8,9,10,12,13,14,15]);
plot (x,y)
axis([0,3,-2,2]);
title('Sum of signals:')
hold on

b1 = 1 * A(1, 1);
y1 = y1 + b1*(1/1*(sin(x*1*2*pi)));

subplot(3,5,1);
plot(x, y1, 'r')
axis([0,3,-2,2]);
hold on

b3 = 3 * A(1, 3);
y3 = y3 + b3*(1/3*(sin(x*3*2*pi)));

subplot(3,5,6);
plot(x, y3, 'g')
axis([0,3,-2,2]);
hold on

b5 = 5 * A(1, 5);
y5 = y5 + b5*(1/5*(sin(x*5*2*pi)));

subplot(3,5,11);
plot(x, y5)
axis([0,3,-2,2]);
hold on