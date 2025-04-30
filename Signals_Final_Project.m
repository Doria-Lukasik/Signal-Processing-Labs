%% Convolution Part A
h = [3 2 1 -2 1 0 -4 0 3]; % Impulse response
x = [3 1 0 -4 1 -5]; % Input signal
y = conv(x,h); % y[n] = x[n] * h[n]
subplot(3,1,1); % 3x1 array of graphs
stem([-2:3],x); % plot x[n-3]
title('x[n]');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2); % make 2nd graph active
stem([0:8],h); % plot h[n]
title('h[n]');
xlabel('n');
ylabel('h[n]');
subplot(3,1,3); % make 3rd graph active
stem([-2:11],y); % plot y[n]
title('y[n]');
xlabel('n');
ylabel('y[n]');

% The start and stop time was calculated based off when x[n] starts and
% then the length of the convolution of x[n]*h[n] is 14. Since the start
% time is -2 and the length is 14, the stop time of y[n] is at 11. 11+-2 =
% 14 accounting for 0. 

%% Convolution Part B
clf;
h = [0 2 4 2 0]; % Impulse response
x = [0 2 2]; % Input signal
y = conv(x,h); % y[n] = x[n] * h[n]
subplot(3,1,1); % 3x1 array of graphs
stem([4:6],x); % plot x[n]
title('x[n]');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2); % make 2nd graph active
stem([6:10],h); % plot h[n]
title('h[n]');
xlabel('n');
ylabel('h[n]');
subplot(3,1,3); % make 3rd graph active
stem([4:10],y); % plot y[n]
title('y[n]');
xlabel('n');
ylabel('y[n]');
%% Laplace Transform Part A and B
% Both were done by hand and submitted seperately on black board

%% Laplace Transform Part C
clf
b = [0 4 4 4]; % Numerator coefficients
a = [1 3 2 0]; % Denominator coefficients
zs = roots(b) 
ps = roots(a) 
% pzmap(ps,zs) % generates pole-zero diagram
[z, p, k] = tf2zp(b, a)
zplane(z, p)
%% Laplace Transform Part D
clf
syms s 
% X = (1/s)*4*((s^2+s+1)/(s^2+3*s+2));
X = (4.*s^2+4.*s+4)/(s^3+3.*s^2+2.*s);
L = matlabFunction(ilaplace(X))
t = 0: 0.01: 10;
plot(t, L(t))
%% Laplace Transform Part E
[r p k] = residue(b,a)
% Output confirms:
%   r = 6, -4, 2; the numerators of H(s)
%   p = -2, -1, 0; the s in the denominator
%   k = 0;
%% Laplace Transform Part F
clf
w = linspace(-20,20,200);
o = linspace(-5,5,200);
[sigmaGrid,omegaGrid] = meshgrid(o,w);
sGrid = sigmaGrid+j*omegaGrid;
surfaceH = polyval(b,sGrid)./polyval(a,sGrid);
clf
mesh(o,w,10*log10(abs(surfaceH)))
%% Laplace Transform Part G
syms w t
ht = 2*heaviside(t)-4*exp(-1*t)*heaviside(t)+6*exp(-2*t)*heaviside(t)
Hw = fourier(ht,t,w)
pretty(Hw)
ht2 = ifourier(Hw,w,t)
ht2 = simplify(ht2)