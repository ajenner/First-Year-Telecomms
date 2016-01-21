sc = figure(1);
figure(sc);
[song, fs]=wavread('exercise notes2.wav');
N = length(song);
subplot(4,1,1)
plot(song)
ms = 2*fs;

X0 = fftshift(abs(fft(song,N)));
F0 = (-(N/2):(N/2)-1);
subplot(4,1,2)
plot(F0,X0);

f = 30000;
sample = resample(song,ms,fs);
x = linspace(0,N/fs, N*2);
y = sin(2*pi*x*f);
y = transpose(y);
B = y.*sample;
subplot(4,1,3)
plot(B,'r')

X1 = fftshift(abs(fft(B,N)));
F1 = (-(N/2):(N/2)-1) * ms/N;
subplot(4,1,4)
plot(F1,X1,'r');