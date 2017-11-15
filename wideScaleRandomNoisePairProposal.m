function out=wideScaleRandomNoisePairProposal(x)
% Changes two random coordinates 2i-1 and 2i of x by a random amount at a 
% random scale chosen in an exponential fashion from a range at least
% [.0001,100] 
low = -4;  
high = 2; 
e = (high-low).*rand() + low; 
radius = 10^e; 

ind = randi(numel(x)/2)*2 - 1; 
x(ind) = x(ind)+radius*randn();
x(ind+1) = x(ind+1)+radius*randn();
out = x; 
end 