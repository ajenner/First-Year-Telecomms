sc = figure(1);
figure(sc);
fs = 40;
frequency = 10;
seconds=1;
x = 0:(1/fs):seconds-(1/fs);
y = sin(2*pi*x*frequency);

N = [64 128 256];

for i = 1:3
    X=fftshift(abs(fft(y,N(i))));
    subplot(1,3,i);
    F=[-N(i)/2:N(i)/2-1]*fs/N(i);
    plot(F,X);
end