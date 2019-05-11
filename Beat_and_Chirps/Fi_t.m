function Fi_t(fc,fm,tau,dur,fsamp,FigNum)
% 
% FI_T produces instantaneous frequency for bell sounds
%
% Usage: Fi_t = Fi_t(fc,fm,Io,tau,dur,fsamp)
%        Fi_t = fc - yy*fm*sin(2*pi*fm*t) + [(yy)d/dt]*cos(2*pi*fm*t)
%          yy = e^(-t/tau)
%
% Where  fc = carrier freqency
%        fm = modulating frequency
%       tau = decay parameter for A(t) and I(t)
%       dur = duration (in sec.) of the output signal
%     fsamp = sampling rate
%
% Returns:
%        Fi_t = instantaneous frequency spectrum

t    = 0:1/fsamp:dur;                                       % Number of samples for entire duration
yy   = exp(-t/tau);                                         % I(t)
yydt = -exp(-t/tau)/tau;                                    % I(d/dt)

Fi_t = fc-yy.*fm.*sin(2*pi*fm.*t)+yydt.*cos(2*pi*fm.*t);

rsig = real(exp(1i*Fi_t));                                  % real portion of signal
soundsc(rsig,fsamp);

figure(FigNum)
subplot(2,1,1)
plot(t,rsig)
title('Instantaneous Frequency')
xlabel('Time (Secs)'),ylabel('Signal')
grid minor,box on

subplot(2,1,2)
spectrogram(rsig,1024,[],1024,fsamp,'yaxis')
title('Spectrogram of Signal')
end