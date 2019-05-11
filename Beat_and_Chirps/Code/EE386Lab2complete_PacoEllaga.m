%% EE386 Project Lab 2
%
% MATLAB code conducted by Paco Ellaga (009602331)

cdflib.setFileBackward('BACKWARDFILEon');   % Allows for .m file to
mode = cdflib.getFileBackward;              % open in previous ver.
                                            % of MATLAB.
                                                    
%% Lab2 Section 1: a_First Equation

clear all,clc;

% variables and equation
f  = 0.25;                              % fundamental frequency
fs = 4;                                 % sample frequency
n  = 0:15;                              % number of sec on time axis
t  = f*n/fs;                            % time axis
s  = 2*cos(2*pi*t/fs+pi/3);             % the periodic signal

figure(1)
subplot(3,1,1)
stem(t,s)                               % stem plot of actual signal
grid minor
xlabel('Time (sec)'), xlim([-0.1 1])
ylabel('Amplitude'), ylim([min(s)-0.5 max(s)+0.5])
title('s = cos(2*pi*t/4)+1')

% setting magnitude and phase equations
S  = (0:1/length(s):0.5-1/length(s))*fs;    % half of the spectrum
SF = (1/length(s))*fft(s);
Sphase=angle(SF);

subplot(3,1,2)
stem(S,abs(SF(1:length(SF)/2)))             % Magnitude measurement
grid minor
xlabel('Time (sec)'), xlim([-0.2 2])
ylabel('Amplitude'), ylim([-0.5 0.6])
title('Magnitude')

subplot(3,1,3)
stem(S,unwrap(Sphase(1:length(SF)/2)))      % Phase measurement
grid minor
xlabel('Time (sec)'), xlim([-0.2 2])
ylabel('Amplitude'), ylim([-1 7])
title('Phase')

%% Lab2 Section 1: a_Second Equation

clear all,clc;

% variables and equation
f  = 0.25;                              % fundamental frequency
fs = 4;                                 % sample frequency
n  = 0:15;                              % number of sec on time axis
t  = f*n/fs;                            % time axis
s  = cos(2*pi*t/fs)+1;                  % the periodic signal

figure(2)
subplot(3,1,1)
stem(t,s)                               % stem plot of actual signal
grid minor
xlabel('Time (sec)'), xlim([-0.1 1])
ylabel('Amplitude'), ylim([0 2.5])
title('s = cos(2*pi*t/4)+1')

% setting magnitude and phase equations
S  = (0:1/length(s):0.5-1/length(s))*fs;    % half of the spectrum
SF = (1/length(s))*fft(s);
Sphase=angle(SF);

subplot(3,1,2)
stem(S,abs(SF(1:length(SF)/2)))             % Magnitude measurement
grid minor
xlabel('Time (sec)'), xlim([-0.2 2])
ylabel('Amplitude'), ylim([-0.5 2.5])
title('Magnitude')

subplot(3,1,3)
stem(S,unwrap(Sphase(1:length(SF)/2)))      % Phase measurement
grid minor
xlabel('Time (sec)'), xlim([-0.2 2])
ylabel('Amplitude'), ylim([-2.5 0.5])
title('Phase')

%% Lab2 Section 1: a_Third Equation

clear all,clc;

% variables and equation
f  = 0.25;                              % fundamental frequency
fs = 4;                                 % sample frequency
n  = 0:15;                              % number of sec on time axis
t  = f*n/fs;                            % time axis
s  = cos(2*pi*t/fs)+sin(2*pi*t/8)+1;    % the periodic signal

figure(3)
subplot(3,1,1)
stem(s)                                 % stem plot of actual signal
grid minor
xlabel('Time (sec)'),  xlim([0 17])
ylabel('Amplitude'), ylim([0 2.5])
title('s = cos(2*pi*t/4)+sin(2*pi*t/8)+1')

% setting magnitude and phase equations
S  = (0:1/length(s):0.5-1/length(s))*fs;    % half of the spectrum
SF = (1/length(s))*fft(s);
Sphase=angle(SF);

subplot(3,1,2)
stem(S,abs(SF(1:length(SF)/2)))             % Magnitude measurement
grid minor
xlabel('Time (sec)'), xlim([-0.2 1.8])
ylabel('Amplitude'), ylim([-0.5 2.5])
title('Magnitude')

subplot(3,1,3)
stem(S,unwrap(Sphase(1:length(SF)/2)))      % Phase measurement
grid minor
xlabel('Time (sec)'), xlim([-0.2 1.8])
ylabel('Amplitude'), ylim([-2.5 0.5])
title('Phase')

%% Lab2 Section 1: b-e

clear all,clc;

% variables and equation
N  = 2^11;                      % Number of points
t  = linspace(0,2,N);           % time sequence of 2sec and 2^11 points
ss = 2*cos(2*pi*t/2);           % periodic signal

figure(4)
stem(t,real(ss),'-b');          % stem of reg. real signal for 2sec
grid minor
xlabel('Time (Sec)')
ylabel('Amplitude'), ylim([-2.5 2.5])
title('ss = 2*cos(2*pi*t/2)')

cn  = fft(ss)/N;                % find the Fourier series
cn  = fftshift(cn);             % reorder the components
n   = -15:15;                   % define a few Cn near the origin
cnn = cn(1+(N/2)+n);            % cnn = components near the origin

figure(5)
subplot(2,1,1)
stem(n,real(cnn),'-b');         % stem of reg. real fft signal
grid minor
xlabel('Time (Sec)')
ylabel('Amplitude'), ylim([-0.5 1.2])
title('Real Component of cosine function')

subplot(2,1,2)
stem(n,imag(cnn),'--k');        % stem of reg. imag fft signal
grid minor
xlabel('Frequency')
ylabel('Amplitude')
title('Imaginary Component of cosine function')

%% Lab2 Section 1: f_odd

clear all,clc;

% variables and equation
N  = 2^11;                      % number of points
t  = linspace(-1,1,N);          % time sequence of 2sec and 2^11 points
ss = square(pi*t);              % periodic signal of 2*cos(2*pi*t/2) 
                                % shifted by +90 degrees
figure(6)                       
stem(t,real(ss),'-b');          % stem of +90 deg phase shift
grid minor
xlabel('Time (Sec)')
ylabel('Amplitude'), ylim([-1.5 1.5])
title('ss = square(pi*(t+0.5))')

cn  = fft(ss)/N;                % find the Fourier series
cn  = fftshift(cn);             % reorder the components
n   = -15:15;                   % define a few Cn near the origin
cnn = cn(1+(N/2)+n);            % cnn = components near the origin

figure(7)
subplot(2,1,1)
stem(n,real(cnn),'-b');         % stem of reg. real fft signal
grid minor
xlabel('Frequency')
ylabel('Amplitude'), ylim([min(real(cnn))-1e-3 1e-3])
title('Real Component of square function')

subplot(2,1,2)
stem(n,imag(cnn),'--k');        % stem of reg. imag fft signal
grid minor
xlabel('Frequency')
ylabel('Amplitude'), ylim([-1 1])
title('Imaginary Component of square function')

%% Lab2 Section 1: f_even

clear all,clc;

% variables and equation
N  = 2^11;                      % number of points
t  = linspace(-1,1,N);          % time sequence of 2sec and 2^11 points
ss = square(pi*(t+0.5));        % periodic signal of 2*cos(2*pi*t/2) 
                                % shifted by +90 degrees
figure(8)                       
stem(t,real(ss),'-b');          % stem of +90 deg phase shift
grid minor
xlabel('Time (Sec)')
ylabel('Amplitude'), ylim([-1.5 1.5])
title('ss = square(pi*(t+0.5))')

cn  = fft(ss)/N;                % find the Fourier series
cn  = fftshift(cn);             % reorder the components
n   = -15:15;                   % define a few Cn near the origin
cnn = cn(1+(N/2)+n);            % cnn = components near the origin

figure(9)
subplot(2,1,1)
stem(n,real(cnn),'-b');         % stem of reg. real fft signal
grid minor
xlabel('Frequency')
ylabel('Amplitude'), ylim([-1 0.5])
title('Real Component of square function')

subplot(2,1,2)
stem(n,imag(cnn),'--k');        % stem of reg. imag fft signal
grid minor
xlabel('Frequency')
ylabel('Amplitude')
ylim([min(imag(cnn))-1e-3 max(imag(cnn))+1e-3])
title('Imaginary Component of square function')

%% Lab2 Section 2-1: ai,c
%
% The sound starts at a low frequency, slowly builds up, and ends after 3 
% seconds. The amplitude slowly becomes bigger longer the signal played.

mychirp(200,1700,3,11025,10)     % mychirp(fi,fend,dur,fsamp,FigNum)

%% Lab2 Section 2-1: aii,c
%
% The sound starts at a frequency higher than where the last ended. It also
% gradually ends to a lower frequency.

mychirp(4000,600,2,11025,11)     % mychirp(fi,fend,dur,fsamp,FigNum)

%% Lab2 Section 2-1: d
%
% The sounds mimicked the same frequency as the last and the
% spectrogram shows relatively same results. Except, for now, the y-axis 
% limit set at 4000 max, which is 2x the initial frequency. And the signal 
% had different size reading in amplitude due the lowered sampling
% frequency.

mychirp(4000,600,2,8000,12)     % mychirp(fi,fend,dur,fsamp,FigNum)

%% Lab2 Section 2-1: e
%
% The signal needed a sampling frequency 2x higher than the initial
% frequency and since it did not, it had to build up to where it initailly
% be as if it were to reach 600Hz from 4Khz. The difference is a fractional
% difference from 2x the initial frequency

mychirp(4000,600,2,5000,13)     % mychirp(fi,fend,dur,fsamp,FigNum)

%% Lab2 Section 2-2: a
%
% Produces a continuous amber alert like beeping sounds for 2 seconds. 

mybeat(1,1,2000,25,2,11025,12)  % mybeat(A,B,fc,fm,dur,fsamp,FigNum)

%% Lab2 Section 2-2: b
%
% Produces the same sound, but the beeps are more spaced out revealing
% longer periods for each cycle.  The sound runs only for 0.5 seconds.

mybeat(1,1,2000,25,0.5,11025,13)% mybeat(A,B,fc,fm,dur,fsamp,FigNum)

%% Lab2 Section 2-2: c,d
%
% The signal reads xt = 2*cos(2000*2*pi*t)*cos(25*2*pi*t) where 2000 is the
% carrier and 25 is the modulated frequency.  The signal is periodic and
% is pinpointed at the period to prove so.

%% Lab2 Section 3



%% Lab2 Section 4: Case 1
%
% When plotting the Fi_t, the frequency and volume skyrocketted (warning if 
% were to play on headphones or high volume), but retain a reminisicent
% pitch of the original bell. As shown, the frequency rises completely
% from the bell to Fi_t and able to count up to 12 harmonics versus the 3
% distinct ones shown from the bell. When comparing the bell and the
% bellenv, the bellenv nulls out the frequency to show the general shape of
% only the bell.

bellenv(2,6,11025,14);          % yy = bellenv(tau,dur,fsamp,FigNum)
pause(6)
bell(110,220,10,2,6,11025,15);  % xx = bell(fc,fm,tau,dur,fsamp,FigNum)
%Fi_t(110,220,2,6,11025,16);    % Fi_t(fc,fm,tau,dur,fsamp,FigNum)

%% Section 4: Case 3
%
% While still audibly louder, the Fi_t shows, a significant decrease in
% frequency and pitch over time. The Fi_t starts of with more harmonics(12)
% than the bell(3) and ends with just about the same. As for the bellenv
% compared to the bell, the bellenv nulls the shape as well for the bell,
% and not for the Fi_t.

bellenv(12,3,11025,17);         % yy = bellenv(tau,dur,fsamp,FigNum)
pause(3)
bell(110,220,10,12,3,11025,18); % xx = bell(fc,fm,Io,tau,dur,fsamp,FigNum)
%Fi_t(110,220,12,3,11025,19);   % Fi_t(fc,fm,tau,dur,fsamp,FigNum)

%% Section 4: Case 5
%
% As described with the other Fi_t's, in this scenario, the Fi_t's shape and
% volume frequency is significantly higher than the bell. The 20 harmonics,
% however, do not null out till the last second, implying longer
% frequencies than the rest. This being the case, lower pitches(bells)
% produce longer frequencies and will dissipate from audible hearing slower
% than frequencies which are shorter. The harmonics increasing from 5 to
% 20, make sense as with others as they are much louder and more apperent
% than the smooth and simple bell.  It is unpleasant, but from what was
% created from the code, these are the results. As for the bellenv, it
% follows the same bell curve and nulls the sound. A pattern that was
% noticed over all 3 cases was that the Fi_t audibly increased the
% frequency and at the same time roughly multiply the harmonics amount by
% around 4 times than the original bell.

bellenv(2,5,11025,20);          % yy = bellenv(tau,dur,fsamp,FigNum)
pause(5)
bell(250,350,5,2,5,11025,21);   % xx = bell(fc,fm,tau,dur,fsamp,FigNum)
    %Fi_t(250,350,2,5,11025,22);    % Fi_t(fc,fm,tau,dur,fsamp,FigNum)