function yy = bellenv(tau,dur,fsamp,FigNum)
% 
% BELLENV produces an envelope function for bell sounds
%
% Usage: yy = bellenv(tau, dur, fsamp);
%        yy = Ao*e^(-t/tau) = Io*e^(-t/tau)
%
% Where tau = time constant
%       dur = duration of the envelope
%     fsamp = sampling frequency
%
% Returns:
%        yy = decaying exponential envelope
%
% Note: produces exponential decay for positive tau

t    = 0:1/fsamp:dur;                   % Number of samples for entire duration
yy   = exp(-t/tau);                     % full bell envelope expression
rsig = real(exp(1i*yy));                % real portion of signal
soundsc(rsig,fsamp);


figure(FigNum)
plot(t,rsig)
title('Enveloped Bell Signal')
xlabel('Time (Secs)'),ylabel('Signal')
grid minor,box on
end