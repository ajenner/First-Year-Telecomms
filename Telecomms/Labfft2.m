sc = figure(1);
figure(sc);
fs = 1000;% Sampling frequency
T = 1/fs;% Sample time
L = 1000;% Length of signal
x = (0:L-1)*T;% Time vector
% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
y = 0.7*sin(2*pi*50*x) +sin(2*pi*120*x);
Y = y + 2*randn(size(x));% Sinusoids plus noise
subplot(1,2,1)
plot(x,Y);
subplot(1,2,2)
X=fftshift(abs(fft(Y,L)));
F=[-L/2:L/2-1]*fs/L;
plot(F,X);
