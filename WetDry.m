Mix_val = 0.5;
dry_val = 1 - Mix_val;



M = length(sig);
N = length(wet_sig);
diff = abs(N - M);
pad = zeros(diff,1);
Sig_pad = (Sig:pad);
hold on
plot(wet_sig)
mix = dry_val * sig + Mix_val + wet_sig;
