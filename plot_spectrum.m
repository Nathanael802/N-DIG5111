function plot_spectrum(sig, Fs)

N = length(sig);
dft=fft(sig);

speclen= floor(N/2+1);

dft_spec=dft(1:speclen);

dft_mag=abs(dft_spec)/N;

dft_mag(2:ceil(N/2))=2*dft_mag(2:ceil(N/2));

dft_db= mag2db(dft_mag);


k = 0:(speclen-1);
freqs = k* Fs/N;

semilogx(freqs, dft_db)

    xlabel('Frequency (Hz)');
    ylabel('Magnitude (dB)');
end


