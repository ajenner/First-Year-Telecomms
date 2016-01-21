sc = figure(1);
figure(sc);
[song, fs]=wavread('exercise notes.wav');
N = 10000;
subplot(2,3,1)
plot(song)

arb = 6900;
note1 = song(1:arb);
subplot(2,3,2)
plot(note1)

note2 = song(arb:10001);
subplot(2,3,3)
plot(note2)

fs2 = fs*2;

X0 = fftshift(abs(fft(song)));
F0 = [-10001/2:10001/2-1]*fs2/10001;
subplot(2,3,4)
plot(F0,X0)

X = fftshift(abs(fft(note1)));
F = [-arb/2:arb/2-1]*fs2/arb;

subplot(2,3,5)
plot(F,X)

X1 = fftshift(abs(fft(note2)));
F1 = [-(10001-arb)/2:(10001-arb)/2]*fs2/(10001-arb);

subplot(2,3,6)
plot(F1,X1)