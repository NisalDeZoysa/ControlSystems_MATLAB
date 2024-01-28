% Q6

% Defining the state space model
A  = [-10 -50 0; 0.2 -0.05 0; 0 1 0]; 
B = [ 1000 ; 0; 0 ];
C = [0 1 0 ];
D = [];


% Obtaining the transfer function.
G =ss(A ,B,C,D );
Gtf = tf(G); 
Gtf 
