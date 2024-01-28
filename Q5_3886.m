% Define the transfer function G1
n1 = [1];          
d1 = [1 0.3 2];    
G1 = tf(n1, d1);   

% Define the transfer function G2
n2 = [0.4];        
d2 = [2 1];        
G2 = tf(n2, d2);   

% Define the transfer function G3
n3 = [2 0];        
d3 = [1];          
G3 = tf(n3, d3);   

% Define gain constants
k1 = 0.7;
k2 = 0.5;
k3 = -1;
k4 = 0.4;
k5 = 2;


Gs1 = series(k3, G2);  % Connect G2 with gain k3 in series


Gpf = feedback(Gs1, k2, +1);  % Connect Gs1 with gain k2 in a positive feedback loop


Gs2 = series(Gpf, k4); % Connect Gpf with gain k4 in series


Gnf1 = feedback(G1, Gpf);  % Connect G1 with Gpf in a negative feedback loop


Gs3 = series(k1, Gnf1); % For the open loop transfer function 


Gnf2 = feedback(Gs3, G3); % For overall transfer function 

tranFunction = Gnf2


%% Plot the step response of the overall transfer function
step(tranFunction);
