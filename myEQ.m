function [b,a]= myEQ(f, dbGain, Q, filt_method, Fs)

A = 10^(dbGain/40);
w0 = 2*pi*f/Fs;
alpha = sin(w0)/(2*Q);

switch filt_method
    case "peak"
        b0 = 1 + alpha*A;
        b1 = -2*cos(w0);
        b2 = 1 - alpha*A;
        a0 = 1 + alpha/A;
        a1 = -2*cos(w0);
        a2 = 1 - alpha/A;
    case "low"
        b0 = (1 - cos(w0))/2;
        b1 = 1 - cos(w0);
        b2 = (1 - cos(w0))/2;
        a0 = 1 + alpha;
        a1 = -2*cos(w0);
        a2 = 1 - alpha;
    case "high"
        b0 = (1 + cos(w0))/2;
b1 = -(1 + cos(w0));
b2 = (1 + cos(w0))/2;
a0 = 1 + alpha;
a1 = -2*cos(w0);
a2 = 1 - alpha;

end

        a =[a0,a1,a2]/a0;
        b = [b0,b1,b2]/a0;

end

