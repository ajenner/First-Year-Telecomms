sc = figure ('name', 'Sawtooth waves');
figure(sc);
x = -1 : .01 : 1;
y = 0;

for k = 1
    y = y + (((-1).^k)*((sin(2*pi*k*x))/(k)));
end
y = (2/pi)*y;
subplot(3,2,1)
plot(x,y)
hold on
a = sawtooth(2*pi*(x+0.5), (1/(10).^10));
title('Approximation with 1 sine function')
plot(x,a, 'r')

k=1;
y=0;
while k <= 3
    y = y + (((-1).^k)*((sin(2*pi*k*x))/((k))));
    k = k+1;
end
y = (2/pi)*y;
subplot(3,2,2)
plot(x,y)
hold on
b = sawtooth(2*pi*(x+0.5), (1/(10).^10));
title('Approximation with 3 sine functions')
plot(x,b, 'r')

k=1;
y=0;
while k <= 5
    y = y + (((-1).^k)*((sin(2*pi*k*x))/((k))));
    k = k+1;
end
y = (2/pi)*y;
subplot(3,2,3)
plot(x,y)
hold on
c = sawtooth(2*pi*(x+0.5), (1/(10).^10));
title('Approximation with 5 sine functions')
plot(x,c, 'r')

k=1;
y=0;
while k <= 10
    y = y + (((-1).^k)*((sin(2*pi*k*x))/((k))));
    k = k+1;
end
y = (2/pi)*y;
subplot(3,2,4)
plot(x,y)
hold on
d = sawtooth(2*pi*(x+0.5), (1/(10).^10));
title('Approximation with 10 sine functions')
plot(x,d, 'r')

k=1;
y=0;
while k <= 50
    y = y + (((-1).^k)*((sin(2*pi*k*x))/((k))));
    k = k+1;
end
y = (2/pi)*y;
subplot(3,2,5)
plot(x,y)
hold on
e = sawtooth(2*pi*(x+0.5), (1/(10).^10));
title('Approximation with 50 sine functions')
plot(x,e, 'r')

k=1;
y=0;
while k <= 500
    y = y + (((-1).^k)*((sin(2*pi*k*x))/((k))));
    k = k+1;
end
y = (2/pi)*y;
subplot(3,2,6)
plot(x,y)
hold on
f = sawtooth(2*pi*(x+0.5), (1/(10).^10));
title('Approximation with 500 sine function')
plot(x,f, 'r')