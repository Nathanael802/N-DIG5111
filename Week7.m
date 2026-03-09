Fs=10000;
A=0.8;
Ts=1/Fs;
dur=1.5;
t=0:Ts:dur;

freq = 100;
theta = 2*pi*freq;
sig = A*sin(theta*t);
plot(t(1:200), sig(1:200))



Theta=2*pi*(100+200*t+500*t.*t);
chirpsig=A*sin(Theta);
audiowrite('mychirp1.wav',chirpsig,Fs);
sound(chirpsig, Fs)