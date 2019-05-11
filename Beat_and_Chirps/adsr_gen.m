function a = adsr_gen(target,gain,duration)
%
% Input
% target - vector of attack, sustain, release target values
% gain - vector of attack, sustain, release gain values
% duration - vector of attack, sustain, release durations in ms
% 
% Output
% a - vector of adsr envelope values

fs = 11025;
a = zeros(fs,1); % assume 1 second duration ADSR envelope
duration = round(duration./1000.*fs); % envelope duration in samp

% Attack phase
start = 2;
stop = duration(1);
for n = [start:stop]
 a(n) = target(1)*gain(1) + (1.0 - gain(1))*a(n-1);
end

% Sustain phase
start = stop + 1;
stop = start + duration(2);
for n = [start:stop]
 a(n) = target(2)*gain(2) + (1.0 - gain(2))*a(n-1);
end

% Release phase
start = stop + 1;
stop = fs;
for n = [start:stop]
 a(n) = target(3)*gain(3) + (1.0 - gain(3))*a(n-1);
end

% rsig = real(exp(1i*a));                        % real portion of signal
% 
% figure(FigNum)
% subplot(2,1,1)
% plot(a,rsig)
% title('Envelope ADSR')
% xlabel('Time (Secs)'),ylabel('Signal')
% grid minor,box on
% 
% subplot(2,1,2)
% spectrogram(rsig,1024,[],1024,fs,'yaxis')
% title('Spectrogram of Signal')
% end