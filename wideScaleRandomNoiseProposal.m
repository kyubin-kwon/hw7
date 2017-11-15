function out=wideScaleRandomNoiseProposal(x)
% Changes all coordinates of x by a random amount at a random scale chosen
% in an exponential fashion from a range at least [.0001,100]
low = -4;  
high = 2; 
e = (high-low).*rand() + low; 
radius = 10^e; 

%modify it by random numbers 
random = randn(1,numel(x)); 
x = x + radius .* random; 

out = x; 
end 