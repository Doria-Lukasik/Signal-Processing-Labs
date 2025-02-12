%% Inital Circuit
R = 1000;
C = 0.000001;
f = 500;
x = log10(f);
f_Hz = logspace(0, x, 100);
w = 2*pi * f_Hz;
Hw = 1 ./ (1 + 1j*R*C*w)
% plot(w, abs(Hw))
% xlabel('Frequency $\omega$ rad/s')
% ylabel('|H(jw)|')
% loglog(w, abs(Hw))
% xlabel ('Logarithmic Scale');
% ylabel('|H(jw)|')
%% Part A
t = linspace(-5, 5);
f1= 2*cos(2*t)
C=1;
R=1;
Hw = 1 ./ (1 + 1j*R*C*2)
v = abs(Hw)
y = angle(Hw);
z = rad2deg(angle(y))
f2 = v*2.*cos(2.*t + z)
clf
plot(t,f1)
hold on
plot (t,f2)
%% Part B
clf
t = linspace(-50, 50);
f1= 0.3*cos(pi*t)+1*cos(0.5*t);
C=1;
R=1;
Hw = 1 ./ (1 + 1j*R*C*pi)
v = abs(Hw)
y = angle(Hw);
z = rad2deg(angle(y))
Hw2 = 1 ./ (1 + 1j*R*C*0.5)
f = abs(Hw2)
g= angle(Hw2);
h= rad2deg(angle(g))
f2 = v*0.3.*cos(pi.*t + z)+f.*cos(0.5*t+h);
clf
subplot(2,1,1)
plot(t,f1)
hold on
subplot(2,1,2)
plot (t,f2)
%% RC Low Pass Filter A
R = 1000;
L = 0.001;
C = 0.0000000033;
f_hz = logspace(log10(100), log10(10e6), 100);
w = 2*pi * f_Hz;
Hw = 1 ./ (1 + 1j*R*C*w)
v = abs(Hw);
clf
subplot(2,1,1)
plot(f_hz, abs(Hw))
xlabel('Frequency \omega rad/s')
ylabel('|H(jw)|')
hold on
subplot(2,1,2)
loglog(f_hz, abs(Hw))
xlabel ('Logarithmic Scale');
ylabel('|H(jw)|')
%% RC Low Pass Filter B
R1 = 100;
R = 1000;
R2 = 10000;
L = 0.001;
C = 0.0000000033;
f_hz = logspace(log10(100), log10(10e6), 100);
w = 2*pi * f_Hz;
Hw = 1 ./ (1 + 1j*R*C*w)
Hw3 = 1 ./ (1 + 1j*R1*C*w)
v = abs(Hw);
clf
subplot(6,1,1)
plot(f_hz, abs(Hw))
xlabel('Frequency \omega rad/s')
ylabel('|H(jw)|')
title('1K Resitor')
hold on
subplot(6,1,2)
loglog(f_hz, abs(Hw))
xlabel ('Logarithmic Scale');
ylabel('|H(jw)|')
title('1K Resitor')
Hw2 = 1 ./ (1 + 1j*R2*C*w)
y = abs(Hw2);
subplot(6,1,3)
plot(f_hz, abs(Hw2))
xlabel('Frequency \omega rad/s')
ylabel('|H(jw)|')
title('10K Resitor')
subplot(6,1,4)
loglog(f_hz, abs(Hw2))
xlabel ('Logarithmic Scale');
ylabel('|H(jw)|')
title('10K Resitor')
subplot(6,1,5)
plot(f_hz, abs(Hw3))
xlabel('Frequency \omega rad/s')
ylabel('|H(jw)|')
title('100 Resitor')
subplot(6,1,6)
loglog(f_hz, abs(Hw3))
xlabel ('Logarithmic Scale');
ylabel('|H(jw)|')
title('100 Resitor')
%% RLC Band Pass Filter
R = 1000;
L = 0.001;
C = 0.0000000033;
fn = 1/ (2*pi*sqrt(L*C))
f_hz = logspace(log10(100), log10(10e6), 100);
w = 2*pi * f_Hz;
Hw = 1 ./ (1 + 1j*R*C*w);
clf
subplot(2,1,1)
semilogx(abs(Hw), 'x')
semilogx(f_hz, 'x')
title('Semi Log Plot')
hold on
subplot(2,1,2)
loglog(f_hz, abs(Hw))
title('Loglog Plot')