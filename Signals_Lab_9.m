%% Convolution Example
% This is the main file that performs the convolution
clear;
close all;
% sampling interval dt
dt = 0.01;
% the time variable vector
t = [-5:dt:5];
% signal x(t)
x = p(t);
% signal h(t)
h = p(t);
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result
plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;
% Theoretical Calculation
% compare the numerical result with the theoretical result
% calculating p(t) convolving with p(t) by hand, we have the
% theoretical results as
% y(t) = t+2, -2 <= t <= 0,
% y(t) = -t+2, 0 <= t <= 2,
% y(t) = 0, otherwise
% keep the original result
hold on;
% plot the theoretical result in the same figure
t1 = [-2:dt:0];
plot (t1, t1+2, 'r--');
t2 = [0:dt:2];
plot (t2, -t2+2, 'r--');
legend ('Numerical Result', 'Theoretical Result');
% %The unit pulse function
% function y = p(x)
% function y = p(x)
% % % y = 1 if -1 <= x <= 1,
% % % y = 0 otherwise
% % % the number of elements in the vector x
% N_element = length(x);
% % % initialize y as an all zero vector
% y = zeros(1, N_element);
% % % if -1 <= x <= 1, then y = 1
% one_idx_logic = and(x >= -1, x <= 1);
% y(one_idx_logic) = 1;
% end
%% Part A_A
clear;
close all;
% sampling interval dt
dt = 0.01;
% the time variable vector
t = [-5:dt:5];
% signal x(t)
x = p(t-1).*p(t);
% signal h(t)
h = p(t);
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result

plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;
% Theoretical Calculation
% compare the numerical result with the theoretical result
% calculating p(t) convolving with p(t+1) by hand, we have the
% theoretical results as
% y(t) = t+1, -1 <= t <= 0,
% y(t) = 1, 0 <= t <= 1,
% y(t) = -t+2, 1 <= t <= 2,
% y(t) = 0, otherwise
% keep the original result
hold on;
% % plot the theoretical result in the same figure
t1 = [-1:dt:0];
plot (t1, t1+1, 'r--');
t2 = [1:dt:2];
plot (t2, -t2+2, 'r--');
t3 = [0:dt:1];
plot (t3, 1, 'r--');
legend ('Numerical Result', 'Theoretical Result');


% The unit pulse function
% function y = p(x)
% % function y = p(x)
% % y = 1 if -1 <= x <= 1,
% % y = 0 otherwise
% % the number of elements in the vector x
% N_element = length(x);
% % initialize y as an all zero vector
% y = zeros(1, N_element);
% % if -1 <= x <= 1, then y = 1
% one_idx_logic = and(x >= -1, x <= 1);
% y(one_idx_logic) = 1;
% end
%% Part A_B
clear;
close all;
% sampling interval dt
dt = 0.01;
% the time variable vector
t = [-5:dt:5];
% signal x(t)
x = exp(-t).*p(t);
% signal h(t)
h = p(t);
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result

plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;

% The unit pulse function
% function y = p(x)
% % function y = p(x)
% % y = 1 if -1 <= x <= 1,
% % y = 0 otherwise
% % the number of elements in the vector x
% N_element = length(x);
% % initialize y as an all zero vector
% y = zeros(1, N_element);
% % if -1 <= x <= 1, then y = 1
% one_idx_logic = and(x >= -1, x <= 1);
% y(one_idx_logic) = 1;
% end
%% Part_A_C
clear;
close all;
% sampling interval dt
dt = 0.01;
% the time variable vector
t = [-5:dt:5];
% signal x(t)
x = (t).*p(t).*p(t);
% signal h(t)
h = p(t);
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result

plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;

% The unit pulse function
% function y = p(x)
% % function y = p(x)
% % y = 1 if -1 <= x <= 1,
% % y = 0 otherwise
% % the number of elements in the vector x
% N_element = length(x);
% % initialize y as an all zero vector
% y = zeros(1, N_element);
% % if -1 <= x <= 1, then y = 1
% one_idx_logic = and(x >= -1, x <= 1);
% y(one_idx_logic) = 1;
% end
%% Part B_a
clear;
close all;
wb = 7;
% sampling interval dt
dt = 0.001;
% the time variable vector
t = [-10:dt:10];
% signal x(t)
x = 5.*sinc(5*t/pi)+0.*sinc(10*t/pi);
% signal h(t)
h = wb/(2*pi)*sinc(wb*t/(2*pi));
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result

plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;

% The unit pulse function
% function y = p(x)
% % function y = p(x)
% % y = 1 if -1 <= x <= 1,
% % y = 0 otherwise
% % the number of elements in the vector x
% N_element = length(x);
% % initialize y as an all zero vector
% y = zeros(1, N_element);
% % if -1 <= x <= 1, then y = 1
% one_idx_logic = and(x >= -1, x <= 1);
% y(one_idx_logic) = 1;
% end
%% Part B_b
clear;
close all;
wb = 3;
% sampling interval dt
dt = 0.001;
% the time variable vector
t = [-10:dt:10];
% signal x(t)
x = 5.*sinc(5*t/pi)+0.*sinc(10*t/pi);
% signal h(t)
h = wb/(2*pi)*sinc(wb*t/(2*pi));
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result

plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;

% The unit pulse function
% function y = p(x)
% % function y = p(x)
% % y = 1 if -1 <= x <= 1,
% % y = 0 otherwise
% % the number of elements in the vector x
% N_element = length(x);
% % initialize y as an all zero vector
% y = zeros(1, N_element);
% % if -1 <= x <= 1, then y = 1
% one_idx_logic = and(x >= -1, x <= 1);
% y(one_idx_logic) = 1;
% end
%% Part B_c
clear;
close all;
wb = 12;
% sampling interval dt
dt = 0.001;
% the time variable vector
t = [-10:dt:10];
% signal x(t)
x = 5.*sinc(5*t/pi)+0.*sinc(10*t/pi);
% signal h(t)
h = wb/(2*pi)*sinc(wb*t/(2*pi));
% convolution between x(t) and h(t)
y = conv(x, h, 'same')*dt;
% plot the convolution result

plot(t, y)
% label the x-axis and y-axis
xlabel('time (second)');
ylabel('y(t)');
% turn the grid on
grid on;

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
one_idx_logic = and(x >= -1, x <= 1);
y(one_idx_logic) = 1;
end
