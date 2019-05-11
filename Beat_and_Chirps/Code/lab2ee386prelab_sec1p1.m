cdflib.setFileBackward('BACKWARDFILEon');
mode = cdflib.getFileBackward;

% EE386 Project Lab 2
%
% MATLAB code conducted by Paco Ellaga (009602331)

%% Lab2 Section 1: a_First Equation

clear all,clc;

% variables and equation

f  = 0.25;                                  % fundamental frequency
fs = 4;                                     % sample frequency
n  = 0:15;                                  % number of sec on time axis
t  = f*n/fs;                                % time axis
s  = 2*cos(2*pi*t/fs+pi/3);                 % the periodic signal

figure(1)
subplot(3,1,1)
stem(t,s)                                   % stem plot of actual signal
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('s  = cos(2*pi*t/4)+1')

% setting magnitude and phase equations
S  = (0:1/length(s):0.5-1/length(s))*fs;    % half of the spectrum
SF = (1/length(s))*fft(s);
Sphase=angle(SF);

subplot(3,1,2)
stem(S,abs(SF(1:length(SF)/2)))             % Magnitude measurement
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('Magnitude')

subplot(3,1,3)
stem(S,unwrap(Sphase(1:length(SF)/2)))      % Phase measurement
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('Phase')

%% Lab2 Section 1: a_Second Equation

clear all,clc;
% variables and equation
f  = 0.25;                                  % fundamental frequency
fs = 4;                                     % sample frequency
n  = 0:15;                                  % number of sec on time axis
t  = f*n/fs;                                % time axis
s  = cos(2*pi*t)+1;                         % the periodic signal
% s  = cos(2*pi*t/4)+1

figure(2)
subplot(3,1,1)
stem(t,s)                                   % stem plot of actual signal
grid minor
xlabel('Time (sec)')
ylabel('Amplitude'),
title('s  = cos(2*pi*t/4)+1')

% setting magnitude and phase equations
S  = (0:1/length(s):0.5-1/length(s))*fs;    % half of the spectrum
SF = (1/length(s))*fft(s);
Sphase=angle(SF);

subplot(3,1,2)
stem(S,abs(SF(1:length(SF)/2)))             % Magnitude measurement
grid minor
xlabel('Time (sec)')
ylabel('Amplitude'),ylim([-2 2])
title('Magnitude')

subplot(3,1,3)
stem(S,unwrap(Sphase(1:length(SF)/2)))      % Phase measurement
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('Phase')

%% Lab2 Section 1: a_Third Equation

clear all,clc;

f  = 0.25;                                  % fundamental frequency
fs = 4;                                     % sample frequency
n  = 0:15;                                  % number of sec on time axis
t  = f*n/fs;                                % time axis
s  = cos(2*pi*t/fs)+sin(2*pi*t/(2*fs))+1;   % the periodic signal

figure(3)
subplot(3,1,1)
stem(s)                                     % stem plot of actual signal
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('Actual Signal')

% setting magnitude and phase equations
S  = (0:1/length(s):0.5-1/length(s))*fs;    % half of the spectrum
SF = (1/length(s))*fft(s);
Sphase=angle(SF);

subplot(3,1,2)
stem(S,abs(SF(1:length(SF)/2)))             % Magnitude measurement
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('Magnitude')

subplot(3,1,3)
stem(S,unwrap(Sphase(1:length(SF)/2)))      % Phase measurement
grid minor
xlabel('Time (sec)')
ylabel('Amplitude')
title('Phase')