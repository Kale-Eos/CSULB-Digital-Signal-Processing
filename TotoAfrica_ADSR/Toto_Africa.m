% EE386 Project Lab 2 Extra Credit Section
%
% MATLAB code conducted by Paco Ellaga (009602331)
clear all, clc, close all;

%% Playing Africa using adsr_gen
% BPM == 60000/93 = 645.161290323ms/beat

% Attack Phase
% 125/1000
% Sustain Phase
% 625/1000
% Release Phase
% 250/1000

% Duration = [250;1250;500];    % whole note -> 2sec
% Duration = [322.6;1613.16;646.16];    % whole note -> 2580.645161ms

% Duration = [125;625;250];  % half note -> 1sec
% Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms

% Duration = [93.75;468.75;187.5];  % dotted quarter note -> 750ms
% Duration = [120.98;604.94;241.94];    % dotted quarter note -> 967.7419355ms

% Duration = [62.5;312.5;125];    % quarter note -> 500ms
% Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms

% Duration = [46.88;234.375;93.75];    % dotted eighth note -> 375ms
% Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms

% Duration = [31.25;156.25;62.5];    % eighth note -> 250ms
% Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms

% Duration = [15.63;78.13;31.25];    % sixteenth note -> 125ms
% Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms

%%
Target = [1-eps;0.25;0];
Gain = [0.005;0.0004;0.00075];
t = 0:1/11024:1;

% Measure 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.483)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(391.995*2*pi.*t'));   % G4
sec2 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

%%
% Measure 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.322)

%%
% Measure 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.483)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(391.995*2*pi.*t'));   % G4
sec2 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

%%
% Measure 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.322)

%%
% Measure 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.483)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(391.995*2*pi.*t'));   % G4
sec2 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

%%
% Measure 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.322)

%%
% Measure 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.483)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)            % added 1/16th rest

soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(391.995*2*pi.*t'));   % G4
sec2 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

%%
% Measure 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6  
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5 
sec1 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6 
sec1 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

sec0 = adsr.*(cos(1479.98*2*pi.*t'));   % F#6 
sec1 = adsr.*(cos(1108.73*2*pi.*t'));   % C#6
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(1318.51*2*pi.*t'));   % E6 
sec1 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.322)

%%
% Measure 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5 
sec1 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec2 = adsr.*(cos(349.228*2*pi.*t'));   % F4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)            % synced with a 1/16th rest

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.645)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(932.328*2*pi.*t'));   % A#4
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)            % synced with 1/16th note

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.483)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
pause(0.322)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(932.328*2*pi.*t'));   % A#5
soundsc(sec0,11025)
pause(0.161)

sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
pause(0.161)

%%
% Measure 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
sec1 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
soundsc(sec0,11025)         % Played again for whole note
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(1.290)                % synced with a 1/2th note

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.161)

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(987.767*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.483)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.322)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)
%%
% Measure 7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)                % synced with a 1/16th note

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.483)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.322)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.161)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.161)

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
pause(0.645)                % synced with a 1/16th note

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.322)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.322)

%%
% Measure 8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
pause(0.645)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.161)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.322)

%%
% Measure 9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(440*2*pi.*t'));       % A4
sec1 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.483)                % synced with a 1/4th note

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)                % added a 1/16th rest

sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)                % added a 1/16th rest

sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(391.995*2*pi.*t'));   % G4
sec2 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

%%
% Measure 10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5 
sec1 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec2 = adsr.*(cos(349.228*2*pi.*t'));   % F4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.322)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.161)

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.483)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec1 = adsr.*(cos(466.164*2*pi.*t'));   % A#4
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.483)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(783.991*2*pi.*t'));   % G5
soundsc(sec0,11025)
pause(0.322)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(932.328*2*pi.*t'));   % A#5
soundsc(sec0,11025)
pause(0.161)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5
soundsc(sec0,11025)
pause(0.161)

%%
% Measure 11 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(987.767*2*pi.*t'));   % B5
sec1 = adsr.*(cos(587.330*2*pi.*t'));   % D5 
sec2 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec3 = adsr.*(cos(349.228*2*pi.*t'));   % F4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
soundsc(sec3,11025)
pause(1.290)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(349.228*2*pi.*t'));   % F4
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.161)                    % synched with a 1/16th note

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.483)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.225*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.322)

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)
pause(0.322)

%%
% Measure 12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sec0 = adsr.*(cos(698.456*2*pi.*t'));   % F5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
soundsc(sec0,11025)
soundsc(sec1,11025)
pause(0.322)                % synched with a 1/4th note

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.225*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.225*2*pi.*t'));   % E5
soundsc(sec0,11025)
pause(0.322)

sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.322)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.161)

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
pause(0.645)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.322)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.322)

%%
% Measure 13 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(349.228*2*pi.*t'));   % F4
soundsc(sec0,11025)
pause(0.645)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(587.330*2*pi.*t'));   % D5
soundsc(sec0,11025)
pause(0.161)

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
soundsc(sec0,11025)
pause(0.322)

%%
% Measure 14 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Duration = [60.48;302.48;120.98];    % dotted eighth note -> 483.8709678ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(440*2*pi.*t'));       % A4
sec1 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)

Duration = [161.3;806.58;322.58];  % half note -> 1290.322581ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
soundsc(sec0,11025)
pause(0.483)                % synced with a 1/4th note

Duration = [20.16;100.83;40.32];    % sixteenth note -> 161.2903226ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)                % added a 1/16th rest

sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)                % added a 1/16th rest

sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.161)

Duration = [40.32;201.65;80.65];    % eighth note -> 322.5806452ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(523.251*2*pi.*t'));   % C5
sec1 = adsr.*(cos(440*2*pi.*t'));       % A4
sec2 = adsr.*(cos(329.628*pi.*t'));     % E4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

sec0 = adsr.*(cos(493.883*2*pi.*t'));   % B4
sec1 = adsr.*(cos(391.995*2*pi.*t'));   % G4
sec2 = adsr.*(cos(293.665*2*pi.*t'));   % D4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)

Duration = [80.65;403.29;161.29];     % quarter note -> 645.161290323ms
adsr = adsr_gen(Target,Gain,Duration);
sec0 = adsr.*(cos(659.255*2*pi.*t'));   % E5
sec1 = adsr.*(cos(523.251*2*pi.*t'));   % C5 
sec2 = adsr.*(cos(391.995*2*pi.*t'));   % G4
soundsc(sec0,11025)
soundsc(sec1,11025)
soundsc(sec2,11025)
pause(0.332)