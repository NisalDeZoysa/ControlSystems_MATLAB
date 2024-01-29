% Define the numerator of the transfer function
num1 = [1];

% Define the first part of the denominator of the transfer function
d1 = [1 0];

% Define the second part of the denominator of the transfer function
d2 = [1 8 32];

d = conv(d1, d2);

% Create a transfer function with the specified numerator and denominator
sys = tf(num1, d);

% Plot the root locus of the transfer function
rlocus(sys)


