sc = figure ('name', 'Square waves');
figure(sc);
x = -1 : .01 : 1;
y = 0;

for k = 0
     y = y + ((-1).^k)*(sin(2*pi*(2*k +1)*x))/((2*k+1).^2);
end
y = (8/pi.^2)*y;
subplot(3,2,1)
plot(x,y)
hold on
a = sawtooth(2*pi*(x+0.25), 0.5);
title('Approximation with 1 sine function')
plot(x,a, 'r')

k=0;
y=0;
while k <= 3
    y = y + ((-1).^k)*(sin(2*pi*(2*k +1)*x))/((2*k+1).^2);
    k = k+1;
end
y = (8/pi.^2)*y;
subplot(3,2,2)
plot(x,y)
hold on
b = sawtooth(2*pi*(x+0.25), 0.5);
title('Approximation with 3 sine functions')
plot(x,b, 'r')

k=0;
y=0;
while k <= 5
    y = y + ((-1).^k)*(sin(2*pi*(2*k +1)*x))/((2*k+1).^2);
    k = k+1;
end
y = (8/pi.^2)*y;
subplot(3,2,3)
plot(x,y)
hold on
c = sawtooth(2*pi*(x+0.25), 0.5);
title('Approximation with 5 sine functions')
plot(x,c, 'r')

k=0;
y=0;
while k <= 10
    y = y + ((-1).^k)*(sin(2*pi*(2*k +1)*x))/((2*k+1).^2);
    k = k+1;
end
y = (8/pi.^2)*y;
subplot(3,2,4)
plot(x,y)
hold on
d = sawtooth(2*pi*(x+0.25), 0.5);
title('Approximation with 10 sine functions')
plot(x,d, 'r')

k=0;
y=0;
while k <= 500
    y = y + ((-1).^k)*(sin(2*pi*(2*k +1)*x))/((2*k+1).^2);
    k = k+1;
end
y = (8/pi.^2)*y;
subplot(3,2,5)
plot(x,y)
hold on
e = sawtooth(2*pi*(x+0.25), 0.5);
title('Approximation with 50 sine functions')
plot(x,e, 'r')

k=0;
y=0;
while k <= 500
    y = y + ((-1).^k)*(sin(2*pi*(2*k +1)*x))/((2*k+1).^2);
    k = k+1;
end
y = (8/pi.^2)*y;
subplot(3,2,6)
plot(x,y)
hold on
f = sawtooth(2*pi*(x+0.25), 0.5);
title('Approximation with 500 sine function')
plot(x,f, 'r')