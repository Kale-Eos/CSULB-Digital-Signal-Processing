cdflib.setFileBackward('BACKWARDFILEon');
mode = cdflib.getFileBackward;

% EE386 Project Lab 2
%
% MATLAB code conducted by Paco Ellaga (009602331)

%% Lab2 Section 1: b-e

clear all,clc,close all;

N  = 2^11;                      % Number of points
t  = linspace(0,2,N);           % time sequence of 2sec and 2^11 points
ss = 2*cos(2*pi*t/2);           % periodic signal

figure(1)
stem(t,real(ss),'-b');          % stem of reg. real signal for 2sec
grid minor
ylim([-2.5 2.5])

cn  = fft(ss)/N;                % find the Fourier series
cn  = fftshift(cn);             % reorder the components
n   = -15:15;                   % define a few Cn near the origin
cnn = cn(1+(N/2)+n);            % cnn = components near the origin

figure(2)
subplot(2,1,1)
stem(n,real(cnn),'-b');         % stem of reg. real fft signal
grid minor
ylim([-0.5 1.2])

subplot(2,1,2)
stem(n,imag(cnn),'--k');        % stem of reg. imag fft signal
grid minor

%% Lab2 Section 1: e_i,ii

clear all,clc;

N  = 2^11;                      % number of points
t  = linspace(0,2,N);           % time sequence of 2sec and 2^11 points
ss = 2*sin(2*pi*t/2);           % periodic signal

figure(3)                       
stem(t,real(ss),'-b');          % stem of 90 deg phse shift
grid minor
ylim([-2.5 2.5])

cn  = fft(ss)/N;                % find the Fourier series
cn  = fftshift(cn);             % reorder the components
n   = -15:15;                   % define a few Cn near the origin
cnn = cn(1+(N/2)+n);            % cnn = components near the origin

figure(4)
subplot(2,1,1)
stem(n,real(cnn),'-b');         % stem of reg. real fft signal
grid minor

subplot(2,1,2)
stem(n,imag(cnn),'--k');        % stem of reg. imag fft signal
grid minor
ylim([-1.2 1.2])