function mychirp(fi,fend,dur,fsamp,FigNum)
%  
% MYCHIRP produces a linear chirp signal for chirp functions
%
% Usage:  psi = mychirp(fi,fend,dur,fsamp)
%         psi = 2*pi*u*t^2 + 2*pi*fi*t
%
% Where    fi = initial frequency
%        fend = ending frequency
%         dur = duration of the signal
%       fsamp = sampling frequency
%
% Returns:
%          x = linear chirp signal and spectrogram analysis

t = 0:1/fsamp:dur;                  % Number of samples for entire duration
u = (fend-fi)/(2*dur);              % change of frequency over time 

psi = (2*pi*u.*t.^2)+(2*pi*fi.*t);  % signal breakdown
x = real(exp(1i*psi));              % real portion of signal 
soundsc(x,fsamp);

figure(FigNum)
subplot(2,1,1)
plot(t,x)
title('Linear Chirp')
xlabel('Time (Secs)'),ylabel('Signal')
grid minor,box on

subplot(2,1,2)
spectrogram(x,1024,[],1024,fsamp,'yaxis')    
title('Spectrogram of Signal')
end