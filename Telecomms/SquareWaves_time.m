sc = figure ('name', 'Square waves');
figure(sc);
x = -1 : .01 : 1;
y = 0;

for k = 1
     y = y + (4/pi)*((sin(2*pi*k*x))/k);
end
subplot(3,2,1)
plot(x,y)
hold on
a = square(2*pi*x);
title('Approximation with 1 sine function')
plot(x,a, 'r')

k=1;
y=0;
while k <= 5
    y = y +(sin(2*pi*k*x))/k;
    k = k+2;
end
y = (4/pi)*y;
subplot(3,2,2)
plot(x,y)
hold on
b = square(2*pi*x);
title('Approximation with 3 sine functions')
plot(x,b, 'r')

k=1;
y=0;
while k <= 9
    y = y +(sin(2*pi*k*x))/k;
    k = k+2;
end
y = (4/pi)*y;
subplot(3,2,3)
plot(x,y)
hold on
c = square(2*pi*x);
title('Approximation with 5 sine functions')
plot(x,c, 'r')

k=1;
y=0;
while k <= 19
    y = y +(sin(2*pi*k*x))/k;
    k = k+2;
end
y = (4/pi)*y;
subplot(3,2,4)
plot(x,y)
hold on
d = square(2*pi*x);
title('Approximation with 10 sine functions')
plot(x,d, 'r')

k=1;
y=0;
while k <= 99
    y = y +(sin(2*pi*k*x))/k;
    k = k+2;
end
y = (4/pi)*y;
subplot(3,2,5)
plot(x,y)
hold on
e = square(2*pi*x);
title('Approximation with 50 sine functions')
plot(x,e, 'r')
axis([-1,1,-2,2])

k=1;
y=0;
while k <= 999
    y = y +(sin(2*pi*k*x))/k;
    k = k+2;
end
y = (4/pi)*y;
subplot(3,2,6)
plot(x,y)
hold on
f = square(2*pi*x);
title('Approximation with 500 sine function')
plot(x,f, 'r')
axis([-1,1,-2,2])