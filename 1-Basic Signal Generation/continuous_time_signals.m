%Aim: Generate continuous step, ramp, sinusoidal, square, sawtooth, exponential and 
% damped sin wave in GNU Octave

% Constant Step funciton 
% 1.Generate X-axis and Y-axis values
a = 1:5 % x-values from 1 to 5
b = 2*ones(1,5) % y-values as 2
% 2.Plotting
%Use figure whenever generating a new plot
%Figures plotted after figure will open in a new window
figure 
%syntax plot(x-axis values, y-axis values)
plot(a,b)
% 3. Setting Title, X-axis label and Y-axis label
xlabel('time')
ylabel('amplitude')
title('Step Function')

% Ramp function 
a = 1:5
b = a %for ramp funciton y=x
figure
plot(a,b)
xlabel('time')
ylabel('amplitude')
title('Ramp function')


% Generation of sine wave
% 1. Generation of x-values i.e time values
% Decide how many cycles to be plotted.
% Time values should be generated by taking into accout the frequency and
% number of cycles to be shown.

% Example: Sine Wave of 5Hz frequency
% So in 1 second, there are 5 cycles. That means we get 1 cycle in 1/5.
% Suppose we want to see 2 cycles. We can see two cycles in 2*(1/5) seconds.
% So our time values are from 0 to 2/5 seconds.

% Syntax for generating time is t = from_time:step_size:to_time
% In this casse from_time = 0 and to_time = 2/5
% step_size is the smallest step that will be incremented to the previous values
% step_size determines the number of elements in the time range
% We can set step_size as 1/no_of_elements_we_want

%For example, for getting time from 0 to 2/5 seconds with 1000 elements in between
%we can use:

t = 0:1/1000:2/5

% 2.Generating y-values
f = 5 %frequecy as 5Hz
y = sin(2*pi*f*t) %y value as sin values
% 3. Plotting

figure
plot(t,y)
xlabel('time')
ylabel('amplitude')
title('sine wave of 2Hz frequency')


% Generation of cosine wave
% Similar to the generation of sine wave, but cos function is used insead of sin

% Cos wave of frequency 50Hz
%Let's show 3 cycles

t = 0:1/1000:3/50
f=50
y = cos(2*pi*f*t)
figure
plot(t,y)
xlabel('time')
ylabel('amplitude')
title('cosine wave of 50Hz frequency')


% Generation of Square Waveform of 10Hz
% Let's see 5 cycles
t = 0:1/1000:5/10
f = 10
%In octave, square wave is provided in the signal module
%So we have to load it first before calling the square function
pkg load signal; 
y = square(2*pi*f*t)
figure
plot(t,y)
xlabel('time')
ylabel('amplitude')
title('square wave of 10Hz frequency')


% Generation of sawtooth waveform of 2Hz
% Let's plot 5 cycles
t = 0:1/1000:5/2
f = 2
y = sawtooth(2*pi*f*t)
figure
plot(t,y)
xlabel('time')
ylabel('amplitude')
title('sawtooth wave of 2Hz frequency')


%% SUBPLOTS
%% Subplots are used to plot more than one graph in a single window
%% We will use subplot to plot exponential waveforms, e^x as well as e^(-x) side
%% by side as follows:

% We need to use subplot(no_of_rows,no_of_columns,entry_number)
% before using plot() to draw multiple graphs

% Let's draw two exponential functions side by side, i.e 1 row and 2 columns

t = 0:1/1000:5
y1=exp(t)
y2=exp(-t)

figure
subplot(1,2,1)
plot(t,y1)
xlabel('time')
ylabel('amplitude')
title('e^x')
subplot(1,2,2)
plot(t,y2)
xlabel('time')
ylabel('amplitude')
title('e^{-x}')

% Generation of damped sin wave
% Damped sin wave is (e^-x)sinx

%Let's plot 10 cycles of a 10Hz damped sin wave

t = 0:1/10000:1
f = 10
y = exp(-t).*sin(2*pi*f*t)
figure
plot(t,y)
xlabel('time')
ylabel('amplitude')
title('Damped sin wave')
