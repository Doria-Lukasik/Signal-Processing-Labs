%% Plot the fundamental frequency and hear the associated sound
t = 0:.1:1000;
y = sin(t); plot(t,y);
sound(y)
%% Next add the third harmonic to the fundamental, and plot/hear it.
y = sin(t) + sin(3*t)/3;
plot(t,y);
sound(y)
%% Now use the first, third, fifth, seventh, and ninth harmonics
y = sin(t) + sin(3*t)/3 + sin(5*t)/5 + sin(7*t)/7 + sin(9*t)/9;
plot(t,y);
sound(y)
% Questions:
% a) The pitch gets higher and the sound becomes more clearer to hear. 
% b) The first plot the sound is very low and hard to hear. The graph shows
%a distorted small waves. The second plot has a higher pitch than the first
%one and the graph displays a lot more vibration frequencies than the
%first. The last plot has a lower tone but it is easy to hear. the graph
%shows a lot more compressions that are more upright/vertical. 
%% CODE 1
% Ideal square wave
t=-10:0.0001:10;
x=0.5*(square(t)+1);
plot(t,x);
hold on
% CODE 2 - Square Wave
clc, syms n x
L = pi;
N_TERMS = input('Number of terms: ');
n = 1:N_TERMS;
% Calculating the coefficients of the Fourier Series
tic
a0 = (1/L)*int(1, x, 0, pi);
an = (1/L)*int(1*cos(n*x), x, 0, pi);
bn = (1/L)*int(1*sin(n*x), x, 0, pi);
% % Plugging the coefficient values in the Fourier Series
f = 0;
for n = 1:N_TERMS
f = f+ (an(n)*cos(n*x) + bn(n)*sin(n*x));
end
toc
fprintf('Approximation using %d terms\n', n)
f_approx = (a0/2)+ f
ezplot(f_approx, [-10,10])
xlabel ('t')
ylabel('Approximation')
title ('Fourier Series of Equation 1 With N = 7 and a Square Function')
legend('f(x)','f`(x)')
% a) Code two implements equation one by defining what a0, aN and bn are.
% It then goes on to ask how many terms you want to use using a user imput
% function. The code then runs and it returns a set of numbers which is the
% summation of your Fourier series and plots the function. 
% c) The signal has the greatest ocillations as the amount of "N" terms
% decreases. 
% d) 
% Table 1
% Number of terms       Overshoot
% 7                     0.145
% 20                    0.136
% 30                    0.132
% 50                    0.126
% As the number of terms increases, the overshoot decreases. 
% e) 
% % Table 2
% Number of terms       Computational Time(s)
% 7                     0.076
% 20                    0.175
% 30                    0.196
% 50                    0.335
% f) This balance comes from the number of terms we use.  
%% Part C
clc, syms n x
L = pi;
N_TERMS = input('Number of terms: ');
n = 1:N_TERMS;
% Calculating the coefficients of the Fourier Series
% tic
a0 = (1/L)*int(1, x, 0, pi);
an = (2/L)*int((1/L)*x*cos(2*n*L*x/L), x, 0, pi);
bn = (2/L)*int((1/L)*x*sin(2*n*L*x/L), x, 0, pi);
% % Plugging the coefficient values in the Fourier Series
f = 0;
for n = 1:N_TERMS
f = f+ (an(n)*cos(n*x) + bn(n)*sin(n*x));
end
% toc
fprintf('Approximation using %d terms\n', n)
f_approx = (a0/2)+ f
ezplot(f_approx, [-10,10])
xlabel ('t')
ylabel('Approximation')
title ('Sawtooth Wave Using Fourier Equation')
hold on
% All screenshots are attached to the submission and are labelled. 