cdflib.setFileBackward('BACKWARDFILEon');
mode = cdflib.getFileBackward;

% EE386 Project Lab 2
%
% MATLAB code conducted by Paco Ellaga (009602331)
%% Lab2 Section 3: Case 2
%
% When plotting the Fi_t, the frequency and volume skyrocketted (warning if 
% were to play on headphones or high volume), but retain a reminisicent
% pitch of the original bell. As shown, the frequency rises completely
% from the bell to Fi_t and able to count up to 12 harmonics versus the 3
% distinct ones shown from the bell. When comparing the bell and the
% bellenv, the bellenv nulls out the frequency to show the general shape of
% only the bell.

bellenv(2,6,11025)              % yy = bellenv(tau,dur,fsamp)
bell(220,440,2,6,11025,1)       % xx = bell(fc,fm,tau,dur,fsamp)
Fi_t(220,440,2,6,11025,2)       % Fi_t(fc,fm,tau,dur,fsamp)

%% Section 3: Case 4
%
% While still audibly louder, the Fi_t shows, a significant decrease in
% frequency and pitch over time. The Fi_t starts of with more harmonics(12)
% than the bell(3) and ends with just about the same. As for the bellenv
% compared to the bell, the bellenv nulls the shape as well for the bell,
% and not for the Fi_t.

bellenv(0.3,3,11025)            % yy = bellenv(tau,dur,fsamp)
bell(110,220,0.3,3,11025,2)     % xx = bell(fc,fm,tau,dur,fsamp)
Fi_t(110,220,0.3,3,11025,3)     % Fi_t(fc,fm,tau,dur,fsamp)

%% Section 3: Case 6
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

bellenv(1,5,11025)              % yy = bellenv(tau,dur,fsamp)
bell(250,350,1,5,11025,1)       % xx = bell(fc,fm,tau,dur,fsamp)
Fi_t(250,350,1,5,11025,2)       % Fi_t(fc,fm,tau,dur,fsamp)
