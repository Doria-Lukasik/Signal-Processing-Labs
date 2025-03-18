%% Part A
% read the file
[data, Fs] = audioread("C:\Users\Doria\Downloads\female_voice.wav");
data = data(:, 1).';
% Fs: sampling frequency; Ts: sampling period
Ts = 1/Fs;
% playback the corrputed sound
sound(data, Fs);
% time vector
t = [-10:Ts:10];
% cutoff of the low pass filter is 1500 Hz
wb = 1500*2*pi;
% ideal low pass filter with cutoff frequency wb
% Fourier transform H(w): rect(w/wb)
ht = wb/(2*pi)*sinc(wb*t/(2*pi)); %time domain
% input: data, LTI impulse response: ht, output: y = convolution between data
% and ht
y = conv(data, ht, 'same');
% normalize the processed sound to avoid clipping
y = y/max(abs(y));
% playback the processed sound
pause(3) %pause for 3 seconds
sound(y, Fs)

% Question 1: 
% As the frequency increases, the muffled sound of the audio becomes
% clearer. At 1500Hz, the processed sound is very muffled. At 30,000 Hz,
% however, the original audio file sounds exactly the same as the processed
% sound. 
%% Part A_2
% read the file
[data, Fs] = audioread("C:\Users\Doria\Downloads\corrupted_male_voice.wav");
wb = 3500*pi*2;
wo = 2000*pi*2;
Ts = 1/Fs;
t = [-10:Ts:10];
ht = (wb/pi).*sinc((wb*t)/(2*pi)).*cos(wo*t);
y = conv(data, ht, 'same');
y = y/max(abs(y));
sound(y, Fs)

%% Part B

Fs = 100e3;
Ts = 1/Fs;
% each note will be played for 0.5 second
t = [0:Ts:0.5];
% The frequency for C note is 262 Hz
Fc = 262;
Fg = 392;
Fa = 440;
Ff= 349;
Fe= 330;
Fd = 294;
% the sinusoidal signal with frequency Fc
notec = cos(2*pi*Fc*t);
noteg = cos(2*pi*Fg*t);
notea = cos(2*pi*Fa*t);
notef = cos(2*pi*Ff*t);
notee = cos(2*pi*Fe*t);
noted = cos(2*pi*Fd*t);
% play the sound
sound(notec, Fs);
pause(0.5)
sound(notec, Fs);
pause(0.5)
sound(noteg, Fs);
pause(0.5)
sound(noteg, Fs);
pause(0.5)
sound(notea, Fs);
pause(0.5)
sound(notea, Fs);
pause(0.5)
sound(noteg, Fs);
pause(1.5)
sound(notef, Fs);
pause(0.5)
sound(notef, Fs);
pause(0.5)
sound(notee, Fs);
pause(0.5)
sound(notee, Fs);
pause(0.5)
sound(noted, Fs);
pause(0.5)
sound(noted, Fs);
pause(0.5)
sound(notec, Fs);
pause(1)

%% Original Song

Fs = 100e3;
Ts = 1/Fs; 
duration = 0.5; 
t = 0:Ts:duration-Ts; 
% The frequency for C note is 262 Hz
Fc = 262;
Fg = 392;
Fa = 440;
Ff= 349;
Fe= 330;
Fd = 294;
Fb = 494;
% the sinusoidal signal with frequency Fc
notec = cos(2*pi*Fc*t);
noteg = cos(2*pi*Fg*t);
notea = cos(2*pi*Fa*t);
notef = cos(2*pi*Ff*t);
notee = cos(2*pi*Fe*t);
noted = cos(2*pi*Fd*t);
noteb = cos(2*pi*Fb*t);

notec = cos(2*pi*Fc*t);
noteg = cos(2*pi*Fg*t);
notea = cos(2*pi*Fa*t);
notef = cos(2*pi*Ff*t);
notee = cos(2*pi*Fe*t);
noted = cos(2*pi*Fd*t);
noteb = cos(2*pi*Fb*t);


sound(notec, Fs); 
pause(0.65);
sound(notec, Fs); 
pause(0.5);
sound(notee, Fs); 
pause(0.65);
sound(noted, Fs); 
pause(0.65);
sound(notef, Fs); 
pause(0.65);
sound(notec, Fs); 
pause(0.65);

sound(notec, Fs); 
pause(0.65);
sound(notec, Fs); 
pause(0.5);
sound(notee, Fs); 
pause(0.65);
sound(noted, Fs); 
pause(0.65);
sound(noteg, Fs); 
pause(0.65);

sound(notec, Fs); 
pause(0.65);
sound(notec, Fs); 
pause(0.5);
sound(notea, Fs); 
pause(0.65);
sound(notef, Fs); 
pause(0.65);
sound(notef, Fs); 
pause(0.5);
sound(notee, Fs); 
pause(0.65);

sound(noteb, Fs); 
pause(0.65);
sound(noteb, Fs); 
pause(0.5);
sound(notea, Fs); 
pause(0.65);
sound(notef, Fs); 
pause(0.65);
sound(noteg, Fs); 
pause(0.65);
sound(notef, Fs);

%Happy Birthday Song (Kinda)