%% Exercise 1, Problem 1
% v = 141.99<-13.08
%i = 3.34<-91.37
%i2 = 11.18<-26.56
v =(100*cosd(0) + j*100*sind(0)) + (50*cosd(-40)+j*50*sind(-40));
i =(10*cosd(-70)+ j*10*sind(-70)) + (7*cosd(120)+ j*7*sind(120));
i2 = (5*cosd(36.870) + j*5*sind(36.870)) + (10*cosd(-53.130) + j*10*sind(-53.130));
v 
i
i2
abs(v)
angle(v)*180/pi
abs(i)
angle(i)*180/pi
abs(i2)
angle(i2)*180/pi
plot(real(v), imag(v), "o")
xlabel( 'real component' );
ylabel( 'complex component' );
title( 'Plot of Complex Numbers v, i, and i2 in the Plane' );
hold on
plot(real(i), imag(i), 'ks')
plot(real(i2), imag(i2), "xb")
grid on
%% Exercise 1, Problem 2
%v1 = 25.45cos(3t-50.18)
%v2 = 48.81cos(3t+126.68)
clf
m1 = 18.6;
pa1 = -54*pi/180;
r1 = complex(m1, 0) * exp(1j *pa1 )
m2 = 7;
pa2 = -40*pi/180;
r2 = complex(m2, 0) * exp(1j *pa2 )
m3 = 20;
pa3 = 45*pi/180;
r3 = complex(m3, 0) * exp(1j *pa3 )
m4 = 50;
pa4 = -30*pi/180;
r4 = complex(m4, 0) * exp(1j *pa4 )
v1=r1+r2
v2=r3-r4
abs(v1)
angle(v1)*180/pi
abs(v2)
angle(v2)*180/pi
t=[-2:0.01:2];
f1=(25.45)*cos(3*t-50.18);
f2=(48.81)*cos(3*t+126.68);
plot(t,f1,'k--')
hold on;
plot(t,f2,'r-.')
legend('f1 = 25.45cos(3t-50.18)','f2 = 48.81cos(3t+126.68))')
ylabel('f1,f2')
xlabel('t')
%% Exercise 2, Problem 1
f = 60;
c= 3e-6;
l= 2e-3;
r = 1;
w = 2*pi*f
zc= 1/(j*w*c)
zl = j*w*l
%% Exercise 2, Problem 2
% Phasor Domain v = 4<10
clf
v = (4*cosd(10)+j*4*sind(10))
plot(real(v), imag(v), "o")
xlabel( 'real component' );
ylabel( 'complex component' );
title( 'Plot of Vin(t)' );
grid on
abs(v)
angle(v)*180/pi
%% Exercise 2, Problem 3
clf
v1 = (4*cosd(10)+j*4*sind(10))
v2 = (v1)*(zc/(zc+zl+r))
abs(v2)
angle(v2)*180/pi
% Phasor Form of v2 = 4<9.93
% Time Domain Form of v2 = 4cos(wt + 9.94)
t=[-2:0.01:2];
f1=4*cos(377*t+10);
f2=4*cos(377*t+9.94);
plot(t,f1,'k--')
hold on;
plot(t,f2,'r-.')
legend('f1 = 4cos(377t+10)','f2 = 4cos(377t+9.94)')
ylabel('f1,f2')
xlabel('t')

