function rmsout = my_rms(inputsig)
len = length(inputsig);
inputsigsquared = inputsig.^2;
sigsummed = sum(inputsigsquared);
meanval = sigsummed/len;

rmsout = sqrt(meanval);

end