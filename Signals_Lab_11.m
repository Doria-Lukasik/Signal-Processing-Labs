%% Part 1 Transfer function:
% H(s) = s^2 + 3*s + 2
b = [1 -1]; % Numerator coefficients
a = [1 3 2]; % Denominator coefficients
zs = roots(b) 
ps = roots(a) 
% pzmap(ps,zs) % generates pole-zero diagram
[z, p, k] = tf2zp(b, a)
zplane(z, p)
%% Part 1 Graphing Option 3
clf
C = complex(ps);
plot(real(C), imag(C),'x')
hold on
P = complex(zs);
plot(real(P), imag(P),'o')
%% Question 1_a
clf
b = [1 5]; % Numerator coefficients
a = [1 2 3]; % Denominator coefficients
zs = roots(b) 
ps = roots(a) 
% pzmap(ps,zs) % generates pole-zero diagram
[z, p, k] = tf2zp(b, a)
zplane(z, p)
%% Quetion 1_a other plot
clf
C = complex(ps);
plot(real(C), imag(C),'x')
hold on
P = complex(zs);
plot(real(P), imag(P),'o')
%% Question 1_b
clf
b = [2 5 12]; % Numerator coefficients
a = [1 2 10]; % Denominator coefficients
zs = roots(b) 
ps = roots(a) 
% pzmap(ps,zs) % generates pole-zero diagram
[z, p, k] = tf2zp(b, a)
zplane(z, p)
%% Question 1_b other plot
clf
C = complex(ps);
plot(real(C), imag(C),'x')
hold on
P = complex(zs);
plot(real(P), imag(P),'o')
%% Question 1_c
clf
b = [2 5 12]; % Numerator coefficients
a = [1 4 14 20]; % Denominator coefficients
zs = roots(b) 
ps = roots(a) 
% pzmap(ps,zs) % generates pole-zero diagram
[z, p, k] = tf2zp(b, a)
zplane(z, p)
%% Question 1_c other plot
clf
C = complex(ps);
plot(real(C), imag(C),'x')
hold on
P = complex(zs);
plot(real(P), imag(P),'o')
%% Question 2 Example
clf
syms s
X = 4/(s * (s + 2)^2);
L = matlabFunction(ilaplace(X))
t = 0: 0.01: 10;
plot(t, L(t))
%% Question 2_a
clf
syms s
X = (s+5)/(s^2 + 2*s + 3);
L = matlabFunction(ilaplace(X))
t = 0: 0.01: 10;
plot(t, L(t))
%% Question 2_b
clf
syms s
X = (2*s^2 + 5*s + 12)/(s^2 + 2*s + 10);
L = matlabFunction(ilaplace(X))
t = 0: 0.01: 10;
plot(t, L(t))
%% Question 2_c
clf
syms s
X = (2*s^2 + 5*s + 12)/((s^2 + 2*s + 10)*(s+2));
L = matlabFunction(ilaplace(X))
t = 0: 0.01: 10;
plot(t, L(t))
%% Question 3 Example
clf
b = [1 2 17]; % Numerator coefficients
a = [1 4 104]; % Denominator coefficients
w = linspace(-20,20,200);
o = linspace(-5,5,200);
H = freqs(b, a, w);
subplot(2,2,1)
plot(w,abs(H))
title("Magnetude")
hold on
subplot(2,2,2)
plot (w, angle(H))
title("Angle")
%% Question 3 Example Continued
clf
[sigmagrid, omegagrid] = meshgrid(o,w);
sgrid = sigmagrid + j*omegagrid;
H1 = polyval(b, sgrid)./polyval(a, sgrid);
mesh(o,w, 10*log10(abs(H1)))
%% Question 3_a
clf
b = [1 5]; % Numerator coefficients
a = [1 2 3]; % Denominator coefficients
w = linspace(-20,20,200);
o = linspace(-5,5,200);
H = freqs(b, a, w);
subplot(2,2,1)
plot(w,abs(H))
title("Magnetude")
hold on
subplot(2,2,2)
plot (w, angle(H))
title("Angle")
%% Question 3_a 3D Plot
clf
[sigmagrid, omegagrid] = meshgrid(o,w);
sgrid = sigmagrid + j*omegagrid;
H1 = polyval(b, sgrid)./polyval(a, sgrid);
mesh(o,w, 10*log10(abs(H1)))
%% Question 3_b 
clf
b = [2 5 12]; % Numerator coefficients
a = [1 2 10]; % Denominator coefficients
w = linspace(-20,20,200);
o = linspace(-5,5,200);
H = freqs(b, a, w);
subplot(2,2,1)
plot(w,abs(H))
title("Magnetude")
hold on
subplot(2,2,2)
plot (w, angle(H))
title("Angle")
%% Question 3_b 3D Plot
clf
[sigmagrid, omegagrid] = meshgrid(o,w);
sgrid = sigmagrid + j*omegagrid;
H1 = polyval(b, sgrid)./polyval(a, sgrid);
mesh(o,w, 10*log10(abs(H1)))
%% Question 3_c
clf
b = [2 5 12]; % Numerator coefficients
a = [1 4 14 20]; % Denominator coefficients
w = linspace(-20,20,200);
o = linspace(-5,5,200);
H = freqs(b, a, w);
subplot(2,2,1)
plot(w,abs(H))
title("Magnetude")
hold on
subplot(2,2,2)
plot (w, angle(H))
title("Angle")
%% Question 3_C 3D Plot
clf
[sigmagrid, omegagrid] = meshgrid(o,w);
sgrid = sigmagrid + j*omegagrid;
H1 = polyval(b, sgrid)./polyval(a, sgrid);
mesh(o,w, 10*log10(abs(H1)))