function xx = bell(fc,fm,Io,tau,dur,fsamp,FigNum)
%
% BELL produce a bell sound
%
% Usage: xx = bell(fc,fm,Io,tau,dur,fsamp)
%        xx = A(t)*cos(2*pi*fc*t + I(t)*cos(2*pi*fm*t))
%
% Where: fc = carrier freqency
%        fm = modulating frequency
%       tau = decay parameter for A(t) and I(t)
%       dur = duration (in sec.) of the output signal
%     fsamp = sampling rate
%
% Returns:
%        xx = bell sound signal and spectrogram analysis

t    = 0:1/fsamp:dur;                               % Number of samples for entire duration
yy   = exp(-t/tau);                                 % A(t)
yy2  = Io*exp(-t/tau);                              % I(t)
xx   = yy.*cos((2*pi*fc.*t)+yy2.*cos(2*pi*fm.*t));  % full bell signal

rsig = real(exp(1i*xx));                            % real portion of signal
soundsc(rsig,fsamp);
pause(6)
rsig2 = imag(exp(1i*xx));
soundsc(rsig2,fsamp);

figure(FigNum)
subplot(2,2,1)
plot(t,rsig)
title('Amplitude Bell Signal')
xlabel('Time (Secs)'),ylabel('Signal')
grid minor,box on

subplot(2,2,2)
spectrogram(rsig,1024,[],1024,fsamp,'yaxis')
title('Spectrogram of Amplitude Envelope')

subplot(2,2,3)
plot(t,rsig2)
title('Modulated Bell Signal')
xlabel('Time (Secs)'),ylabel('Signal')
grid minor,box on

subplot(2,2,4)
spectrogram(rsig2,1024,[],1024,fsamp,'yaxis')
title('Spectrogram of Modulated Envelope')
end