%% Problem 1
x=(1/sqrt(21))+((12^2)-2)/(36+log(5))
y=2;
z=(x/y)+(log(x)*log10(y))+(x^y)
%% Problem 2
A=[2,3,7;1,5,6];
B=[1,2,3;4,5,6];
C=[1+i,2;3,4+i;5,6];
x=A+B
y=B+2
z=A-C'
a=A.*B
b=A./B
%% Problem 3
t=[-2:0.01:2];
f1=cos(2*pi*t+pi/3);
f2=(exp(abs(-t))).*(cos(2*pi*t));
plot(t,f1,'k--')
hold on;
plot(t,f2,'r-.')
legend('f1 = cos(2pit+pi/3)','f2 = (e^|-t|*(cos(2pit)')
ylabel('f1,f2')
xlabel('t')
%% Problem 4
x=linspace(1,90,20)
%% Problem 5
sequence = 0;
x= 1;
y= 30;
while y > 0
    sequence = sequence + (x/y);
    x = x+1;
    y = y-1;
end
sequence

%% Problem 6
p = input('Enter a number for pennies: ');
n = input('Enter a number for nickles: ');
d = input('Enter a number for dimes: ');
q = input('Enter a number for quarters: ');
total = p+(q*25)+(n*5)+(d*10);
if total == 100
    'You have a dollar'
elseif total > 100
    'You have more than a dollar'
else 
    'You have less than one dollar'
end 
