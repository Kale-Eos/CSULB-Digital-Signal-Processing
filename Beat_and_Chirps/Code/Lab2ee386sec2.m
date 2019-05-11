%% Lab2 Section 2-1: ai,c

clc,clear all,close all;

% The sound starts at a low frequency, slowly builds up, and ends after
% 3 seconds. The amplitude slowly becomes bigger longer the signal
% played.

mychirp(200,1700,3,11025)           % mychirp(fi,fend,dur,fsamp)

%% Lab2 Section 2-1: aii,c

% The sound starts at a frequency higher than the last, gradually goes
% down, and ends after 2 seconds. The amplitude length is shortened longer
% the signal is played.

mychirp(4000,600,2,11025)           % mychirp(fi,fend,dur,fsamp)

%% Lab2 Section 2-1: d

% The sounds mimicked the same frequency as the last and the
% spectrogram shows relatively same results. Except, for now, the y-axis 
% limit set at 4000 max, which is 2x the initial frequency. And the
% signal had different size reading in amplitude due the lowered sampling
% frequency.

mychirp(4000,600,2,8000)            % mychirp(fi,fend,dur,fsamp)

%% Lab2 Section 2-1: e

% The signal needed a sampling frequency 2x higher than the initial
% frequency and since it did not, it had to build up to where it initailly
% be as if it were to reach 600Hz from 4Khz. The difference is a fractional
% difference from 2x the initial frequency

mychirp(4000,600,2,5000)            % mychirp(fi,fend,dur,fsamp)

%% Lab2 Section 2-2: a

% Produces a continuous amber alert like beeping sounds for 2 seconds. 

mybeat(1,1,2000,50,2,11025)         % mybeat(A,B,fc,fm,dur,fsamp)

%% Lab2 Section 2-2: b

% Produces a similar sound, but the beeps are more spaced out revealing
% longer periods for each cycle.  The time is also only 0.5 seconds long.

mybeat(1,1,2000,50,0.5,11025)       % mybeat(A,B,fc,fm,dur,fsamp)

%% Lab2 Section 2-2: c,d

% The signal reads xt = 2*cos(2000*2*pi*t)*cos(50*2*pi*t) where 2000 is the
% carrier and 50 is the modulated frequency.  The signal is periodic and
% is pinpointed at the period to prove so.

uiopen('C:\Users\chron\Dropbox\CSULB SPRING 2018\EE386\Labs\Lab 2\Zoomed_in_Beat_Signal.jpg',1)
imshow(Zoomed_in_Beat_Signal)

% As shown in the picture, the period proces itself as 0.005 and when 
% calculating it, 1/2000 is also equal 0.005.