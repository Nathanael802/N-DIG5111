
% define params
N = 61;
n=floor(N/2);
Fs = 4000;
f_high = 200;
f_low = 3000;


% calculate variables
fc_low = pi*f_low/Fs; % normalised angular freq for low
fc_high = pi*f_high/Fs; % normalised angular freq for low


h_low = fc_low*sinc(fc_low*(-n:n));
h_high = fc_high*sinc(fc_high*(-n:n));


wind = hann(length(h_low));

h_low = h_low(:);
h_high=h_high(:);
wind = wind(:);

windowed_sinc_LP = wind.*h_low;
windowed_sinc_HP = wind.*h_high;

windowed_sinc_HP = -windowed_sinc_HP;
windowed_sinc_HP(n+1)=1;

BandP = conv(windowed_sinc_HP,windowed_sinc_LP);

fvtool(BandP,1)




