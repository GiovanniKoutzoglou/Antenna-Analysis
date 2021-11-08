% Create a patchMicrostripInsetfed antenna

%% Antenna Properties 

antennaObject = design(patchMicrostripInsetfed, 14*1e9);
antennaObject.Conductor.Name = 'Silver';
antennaObject.Conductor.Conductivity = 6.3*1e7;
antennaObject.Conductor.Thickness = 2e-07;
% Show
figure;
show(antennaObject) 

%% Antenna Analysis 
% Define plot frequency 
plotFrequency = 14*1e9;
% Define frequency range 
freqRange = (12.6:0.14:15.4)*1e9;
% impedance
figure;
impedance(antennaObject, freqRange)
% sparameter
figure;
s = sparameters(antennaObject, freqRange); 
rfplot(s)
% pattern
figure;
pattern(antennaObject, plotFrequency)
% azimuth
figure;
patternAzimuth(antennaObject, plotFrequency, 0, 'Azimuth', 0:5:360)
% current
figure;
current(antennaObject, plotFrequency)



