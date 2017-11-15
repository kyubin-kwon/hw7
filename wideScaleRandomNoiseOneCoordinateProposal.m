function out=wideScaleRandomNoiseOneCoordinateProposal(x)
% Changes a random coordinate of x by a random amount at a random scale
% chosen in an exponential fashion from a range at least [.0001,100]
low = -4;  
high = 2; 
e = (high-low).*rand() + low; 
radius = 10^e; 
random = randn(); 

ind = randi(numel(x)); 
x(ind) = x(ind)+radius*random;
out = x; 
end 