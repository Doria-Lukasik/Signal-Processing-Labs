%% Part A_1
% disclaimer! to run part A, you have to define the function block at the
% bottom to be y = u(t) and the domain to be (x>=0) ONLY! The current way
% is to run part B of the lab. 
clear;
close all;
% sampling interval dt
dt = 0.01;
t = [-10:dt:10];
h1 = exp(-2*t).*u(t);
h2 = 2*exp(-1*t).*u(t);
h3 = exp(-3*t).*u(t);
h4 = 4.*exp(-1*t).*u(t);
% signal x(t)
x = u(t)-u(t-2);
% convolution between x(t) and h(t)
y1 = conv(x, h1, 'same')*dt;
y2 = conv(y1, h2, 'same')*dt;
% plot the convolution result

plot(t, y2)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;
%% Part A_2
clear;
close all;
% sampling interval dt
dt = 0.01;
t = [-10:dt:10];
h1 = exp(-2*t).*u(t);
h2 = 2*exp(-1*t).*u(t);
h3 = exp(-3*t).*u(t);
h4 = 4.*exp(-1*t).*u(t);
% signal x(t)
x = u(t)-u(t-2);
% convolution between x(t) and h(t)
y1 = conv(x, h1, 'same')*dt;
y2 = conv(x, h2, 'same')*dt;
y3 = y1+y2;
% plot the convolution result

plot(t, y3)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on
%% Part A_C
clear;
close all;
% sampling interval dt
dt = 0.01;
t = [-10:dt:10];
h1 = exp(-2*t).*u(t);
h2 = 2*exp(-1*t).*u(t);
h3 = exp(-3*t).*u(t);
h4 = 4.*exp(-1*t).*u(t);
% signal x(t)
x = u(t)-u(t-2);
% convolution between x(t) and h(t)
y1 = conv(x, h1, 'same')*dt;
y2 = conv(x, h3, 'same')*dt;
y4 = conv(y1, h2, 'same')*dt;
y5 = conv(y2, h4, 'same')*dt;
y6 = y4+y5;
% plot the convolution result

plot(t, y6)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on

% % unit pulse function
% function y = u(x)
% % function y = p(x)
% % y = 1 if -1 <= x <= 1,
% % y = 0 otherwise
% % the number of elements in the vector x
% N_element = length(x);
% % initialize y as an all zero vector
% y = zeros(1, N_element);
% % if -1 <= x <= 1, then y = 1
% one_idx_logic = (x >= 0);
% y(one_idx_logic) = 1;
% end
%% Part B_1
clear;
close all;
% sampling interval dt
dt = 0.001;
t = [-10:dt:10];
t1 = [0:dt:1];
h1 = -t1+1;
% signal x(t)
%x = p(t)-p(t-1);

x = p(t);

% % convolution between x(t) and h(t)
y1 = conv(x, h1, 'same')*dt;
% plot the convolution result
% y(t) = (-t^2/2)+t, 0 <= t <= 1,
% y(t) = (t^2/2)-2t-1, 1 <= t <= 2,
% y(t) = 0, otherwise
plot(t, y1)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on
hold on
t3 = [0:dt:1];
plot (-1*t3+1,-(t3.^2)/2+0.5 , 'r--');
t4 = [1:dt:2];
plot (t4, ((t4).^2 / 2) - 2*t4 + 2, 'r--');
%% Part B_2
clear;
close all;
% sampling interval dt
dt = 0.01;
t = [-10:dt:10];
t1= [0:dt:10];
h = exp(-t).*heaviside(t);

% signal x(t)
x = p(t);
% convolution between x(t) and h(t)
y1 = conv(x, h, 'same')*dt;
% plot the convolution result
plot(t, y1)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on
%% Part B_3
clear;
close all;
% sampling interval dt
dt = 0.01;
t = [-10:dt:10];
%h1 = 2*p(t-1)-2*p(t);
h1 = 2*p(t);

% signal x(t)
%x = p(t-2)-p(t);

x = p(t/2);


% convolution between x(t) and h(t)
y1 = conv(x, h1, 'same')*dt;
% plot the convolution result

plot(t, y1)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on
hold on
t3 = [0:dt:1];
plot (t3, 2*t3+0 , 'r--');
t4 = [1:dt:2];
plot (t4,2*ones(size(t4)), 'r--');
t5 = [2:dt:3];
plot (t5, (-2*t5)+6, 'r--');


% unit pulse function
function y = p(x)
% function y = p(x)
% y = 1 if -1 <= x <= 1,
% y = 0 otherwise
% the number of elements in the vector x
N_element = length(x);
% initialize y as an all zero vector
y = zeros(1, N_element);
% if -1 <= x <= 1, then y = 1
one_idx_logic = and(x >= 0, x<=1);
y(one_idx_logic) = 1;
end
