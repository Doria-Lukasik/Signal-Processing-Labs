%% Problem 1
c1 = 1+sqrt(-100); % this is a complex number, note that sqrt(-1) = 1.0000i
real(c1) % this is the real part of c
imag(c1) % this is the imaginary part of c
figure(1)
clf
plot( c1, 'ro' ) % This plot a red circle for the complex plane c
xlabel( 'real component' );
ylabel( 'complex component' );
title( 'plotting a complex number in the plane' );
% adding to the plot
c2 = 7 + 15i
c3 = pi + sqrt(2)*1i
hold on % preserving original points when additional points are plotted
grid on % Applying a grid to the graph
plot( c2, 'ks' ) % This plot a black square for the complex plane c2
% Adding complex numbers is like vector addition
plot( c1+c2, 'pb' ) % this plot a blue pentagon for c + c2
plot (c3, '+c')
plot (c2+c3, 'hb')
plot(c1*c3, 'xb')
plot(c2/c3, '<m')
axis ([-20 20 0 35])
%% Problem 2
figure(2)
clf % Clears figure
t = linspace( 0, 2*pi )
f1 = cos(t)
f2=sin(t)
plot(f1,'b-')
xlabel( 't' );
ylabel( 'Sine and Cosine' );
title( 'trigonometric functions' );
hold on
plot(f2,'r+')
%% Problem 3
figure(3)
clf
t = linspace( 0, 10 ) % assigning a 1x100 vector to t
c = -1
plot( t, exp(c*t), 'r-' ) % red line
title( 'plots involving the exponential function')
hold on
grid on
c = 1E-1
plot( t, exp(c*t), 'k--' ) %dashed black line
c = 5.0i
plot( t, imag (exp(c*t)), 'b-' ) %blue dot-dash line
c = -1+5.0i
plot( t, exp(c*t), 'g:' ) %green dotted line
xlabel( 't' );
%%%%%%%%%%%%%%%
% When MATLAB is asked to plot more than one complex number, depending on 
% the function being graphed it may or may not ignore the imaginary part of
% it. I noticed that when plotting the real or imaginary part of a number 
% alone MATLAB does so by setting the ignored part to zero and graphing an
% expression of either the imaginary value or the real value. When we
% graphed the imaginary alone, the graph was inverted. 
%%%%%%%%%%%%%%%%
%% Problem 4
figure(4)
clf
t = linspace( 0, 10 ) % assigning a 1x100 vector to t
c = 1i
plot( exp(c*t), 'r-' ) % red line
title( 'plots involving the exponential function' )
hold on
axis image % setting the aspect ratio to 1
c = -.1+1i
plot( exp(c*t), 'k--' ) % black line
c = .1+1i
plot( exp(c*t), 'b-.' ) % blue line
axis image % setting the aspect ratio to 1
xlabel( 'real component' );
ylabel( 'complex component' );
%%%%%%%%%%%%%%%
% The c=1i function spirals as a circle, the c = -0.1+1i function spirals
% inwards, and lastly, the c = 0.1+1i function spirals outward.
%%%%%%%%%%%%%%%%
%% Problem 4 Exercise 2
figure(5)
clf
t = linspace(0, 8*pi)
c = -.1+1i
plot( exp(c*t) )
xlabel( 'real component' );
ylabel( 'complex component' );
axis image



