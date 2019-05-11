%% EE386 - Lab 8
%
% MATLAB code conducted by Paco Ellaga (009602331)
clear all, clc, close all;

%% Playing 'Take On Me' by A-ha using adsr_gen
% BPM == 60000/170 = 352.941176471 ms/beat

% Attack Phase
% 125/1000
% Sustain Phase
% 625/1000
% Release Phase
% 250/1000

% Duration = [250;1250;500];    % whole note -> 2sec
% Duration = [176.48;882.36;352.94];  % whole note -> 1411.76470588 ms

% Duration = [125;625;250];  % half note -> 1sec
% Duration = [88.24;441.18;176.47];  % half note -> 705.882352942 ms

% Duration = [93.75;468.75;187.5];  % dotted quarter note -> 750ms
% Duration = [66.18;330.89;132.36];  % dotted quarter note -> 529.411764707 ms

% Duration = [62.5;312.5;125];    % quarter note -> 500ms
% Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms

% Duration = [46.88;234.375;93.75];    % dotted eighth note -> 375ms


% Duration = [31.25;156.25;62.5];    % eighth note -> 250ms
% Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms

% Duration = [15.63;78.13;31.25];    % sixteenth note -> 125ms

%% Section 1 repeat //////////////////////////////////////////////////////

Target = [1-eps;0.25;0];
Gain = [0.005;0.0004;0.00075];
t = 0:1/11024:1;

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec1,11025)
pause(0.352)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

%%

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(830.609*2*pi.*t'));   % G5#
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(830.609*2*pi.*t'));   % G5#
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));   % A5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
pause(0.176)

%%

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));   % A5
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));   % A5
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));   % A5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

%%

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(65.4064*2*pi.*t'));   % C2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(65.4064*2*pi.*t'));   % C2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.176)

%% Section 3 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Target = [1-eps;0.25;0];
Gain = [0.005;0.0004;0.00075];
t = 0:1/11024:1;

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

%%

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(830.609*2*pi.*t'));   % G5#
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(830.609*2*pi.*t'));   % G5#
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));   % A5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
pause(0.176)

%%

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));       % A5
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));       % A5
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(880*2*pi.*t'));       % A5
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

%%

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(82.4069*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(739.989*2*pi.*t'));   % F5#
soundsc(sec0,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.176)

%% Talking  away ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

Duration = [66.18;330.89;132.36];  % dotted quarter note -> 529.411764707 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(61.7354*2*pi.*t'));   % B1
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.353)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
soundsc(sec0,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

%%

Duration = [88.24;441.18;176.47];  % half note -> 705.882352942 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.352)

Duration = [88.24;441.18;176.47];  % half note -> 705.882352942 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.705)

%% I don't know what

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
soundsc(sec0,11025)
pause(0.352)


Duration = [66.18;330.89;132.36];  % dotted quarter note -> 529.411764707 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(220*pi.*t'));   % A3
soundsc(sec0,11025)
pause(0.352)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec1,11025)
pause(0.352)

%% I'm to say I'll

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(369.994*2*pi.*t'));   % F4#
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(369.994*2*pi.*t'));   % F4#
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(369.994*2*pi.*t'));   % F4#
soundsc(sec0,11025)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(65.4064*2*pi.*t'));   % C2
soundsc(sec1,11025)
pause(0.352)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(329.628*2*pi.*t'));   % E4
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(65.4064*2*pi.*t'));   % C2
soundsc(sec1,11025)
pause(0.176)

%%  Say it anyway

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(55*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
sec1 = adsr.*(cos(55*2*pi.*t'));        % A1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.176)

sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
soundsc(sec0,11025)
pause(0.352)

sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

%% 

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.352)

sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(41.2034*2*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.352)

sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

%% Today is another day 

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
soundsc(sec0,11025)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(48.9994*2*pi.*t'));   % G1
soundsc(sec1,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(48.9994*2*pi.*t'));   % G1
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
sec1 = adsr.*(cos(48.9994*2*pi.*t'));   % G1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
soundsc(sec0,11025)
pause(0.352)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

sec0 = adsr.*(cos(220*2*pi.*t'));   % A3
soundsc(sec0,11025)
pause(0.176)

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % A3
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

%% to find you

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % A3
soundsc(sec0,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(261.626*2*pi.*t'));   % C4
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(246.942*2*pi.*t'));   % B3
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(65.4064*2*pi.*t'));   % C2
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(195.998*2*pi.*t'));   % A3
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(65.4064*2*pi.*t'));   % C2
soundsc(sec1,11025)
pause(0.176)

%% Shying away

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(110*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(110*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(110*2*pi.*t'));   % A1
soundsc(sec1,11025)
pause(0.176)

Duration = [44.12;220.59;88.24];  % quarter note -> 352.941176471 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.352)

sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.352)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.176)

sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
sec1 = adsr.*(cos(82.4069*pi.*t'));   % E2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

%% 

Duration = [88.24;441.18;176.47];  % half note -> 705.882352942 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.176)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(82.4069*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.352)

sec1 = adsr.*(cos(82.4069*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(82.4069*pi.*t'));   % E2
soundsc(sec1,11025)

Duration = [88.24;441.18;176.47];  % half note -> 705.882352942 ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
pause(0.528)

Duration = [22.06;110.3;44.12];  % eighth note -> 176.470588236 ms
adsr = adsr_gen(Target,Gain,Duration);
sec1 = adsr.*(cos(82.4069*pi.*t'));   % E2
soundsc(sec1,11025)
pause(0.176)

%%  Oh I'll be coming for your

sec1 = adsr.*(cos(87.3071*2*pi.*t'));   % F2
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(220*2*pi.*t'));       % A3
sec1 = adsr.*(cos(87.3071*2*pi.*t'));   % F2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(220*2*pi.*t'));       % A3
sec1 = adsr.*(cos(87.3071*2*pi.*t'));   % F2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % A3
soundsc(sec0,11025)
pause(0.176)

sec0 = adsr.*(cos(220*2*pi.*t'));       % A3
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(220*2*pi.*t'));       % A3
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(220*2*pi.*t'));       % A3
sec1 = adsr.*(cos(110*2*pi.*t'));       % A1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

%% love okay

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % A3
soundsc(sec0,11025)
pause(0.176)

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % G3
sec1 = adsr.*(cos(110*2*pi.*t'));       % G1
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.352)

sec1 = adsr.*(cos(82.4069*pi.*t'));     % E2
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % A3
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

sec0 = adsr.*(cos(195.998*2*pi.*t'));   % G3
sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec1,11025)
pause(0.176)

sec1 = adsr.*(cos(73.4162*2*pi.*t'));   % D2
soundsc(sec1,11025)
pause(0.176)