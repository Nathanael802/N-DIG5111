
[sig, Fs] = audioread('pluck.wav');

h = zeros(3*Fs,1);
h(1)=1;
h(round(1*Fs))= 0.5;

y = conv (h, sig);
sound(y, Fs)
plot(y)
%%
[h, Fs] = audioread('LargeHall.wav');
h =sum(h,2)/2;
y = conv (h, sig);
y = y./max(abs(y));
sound(y, Fs)
plot(y)
