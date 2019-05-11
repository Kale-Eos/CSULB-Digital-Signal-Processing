function mybeat(A,B,fc,fm,dur,fsamp,FigNum)
% 
% MYBEAT produces a beat signal for beat functions
%
% Usage: xt = mybeat(A,B,fc,fm,dur,fsamp)
%        xt = 2*A*cos(2*pi*fm*t) * B*cos(2*pi*fc*t)         [multiplication form]
%        xt = A*cos(2*pi*(fc-fm)*t) + B*cos(2*pi*(fc+fm)*t) [summation form]
%
% Where   A = first amplitude
%         B = second amplitude
%        fc = carrier frequency
%        fm = modulated frequency
%       dur = duration of the signal
%     fsamp = sampling frequency
%
% Returns:
%        xt = beat signal and spectrogram analysis

t = 0:1/fsamp:dur;                                          % Number of samples for entire duration

if A==B
    xt = 2*(A.*cos(2*pi*fc.*t)).*(B.*cos(2*pi*fm.*t));      % product form of beat signal
    
elseif A~=B
    xt = A.*cos(2*pi*(fc-fm).*t)+B.*cos(2*pi*(fc+fm).*t);   % summation form of beat signal
    
end

rsig = real(exp(1i*xt));                                    % real portion of signal
soundsc(rsig,fsamp);

figure(FigNum)
subplot(2,1,1)
plot(t,rsig)
title('Linear Beat')
xlabel('Time (Secs)'),ylabel('Signal')
grid minor,box on

subplot(2,1,2)
spectrogram(rsig,1024,[],1024,fsamp,'yaxis')
title('Spectrogram of Signal')
end