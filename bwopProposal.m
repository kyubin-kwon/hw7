function out=bwopProposal(x)
% Changes a random pair of values (i.e. one leg and foot) to some random
% value between -1 and 1
low = -1;  
high = 1; 
e = (high-low).*rand() + low; 

ind = randi(numel(x)/2)*2 - 1; 
x(ind) = e; 
x(ind + 1) = e; 
out = x;
end 