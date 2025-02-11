%% Noisy Text Speech File
load mtlb;
load NoisySpeech.txt;
Fs = 7418;
x = NoisySpeech
L = length(x);
plot([1:L]/Fs,x)
hold on
L = length(mtlb);
plot([1:L]/Fs,mtlb)
xlabel('TIME (SECONDS)')
title ('SPEECH SIGNALs')
legend('NoisySpeech','mtlb')
soundsc(x)
% Compare and explain the difference between the x(n) and mtlb plots
% The nosiy text has a much higher amplitude in some areas than the original matlab audio
% graph. The nosiy audio graph also has a lot more filler audio between the peaks
% and troughs as compared to the original audio graph.The original audio is in red and the nosiy audio is in blue.  
%% Mtlb DTFT Graph 
clf
load mtlb;
[M,f] = dtft(mtlb,1/Fs);
plot(f,M)
xlabel('FREQUENCY (Hz)')
title('SPECTRUM of MTLB')
soundsc(mtlb)
magnitude = norm(f)
%% DTFT Graph of Noisy Signal
clf
x = NoisySpeech
[M,f] = dtft(x,1/Fs);
plot(f,M)
xlabel('FREQUENCY (Hz)')
title('SPECTRUM of Noisy Speech')
magnitude = norm(f)
%% The Graph of Noisy Signal with the Mtlb Graph
clf
load mtlb;
[M,f] = dtft(mtlb,1/Fs);
plot(f,M)
magnitude = norm(f)
hold on
[M,g] = dtft(x,1/Fs);
plot(f,M)
xlabel('FREQUENCY (Hz)')
title('SPECTRUM of Speeches')
legend('NoisySpeech','mtlb')
magnitude_2 = norm(g)
% The noise is attributed to the outer frequency ranges whereas the speech
% signal is represented by the spike at frequency 0 Hz. I would estomate
% the cutoff frequency of the lowpass filter to be -3000 and 3000 Hz. 
%% Lowpass Filter 
load NoisySpeech.txt;
x = NoisySpeech;
y = lowpass(x,0.6)
soundsc(y)
clf
L = length(y);
plot([1:L]/Fs,y)
hold on
L = length(mtlb);
plot([1:L]/Fs,mtlb)
xlabel('TIME (SECONDS)')
title ('SPEECH SIGNALS')
legend('NoisySpeech','mtlb')
% I did get the graphs to look simmilar! 
% It does not matter if the passband is closer to 1 or if the stopband is
% closer to 0. You can move either to achieve the desirered result. 