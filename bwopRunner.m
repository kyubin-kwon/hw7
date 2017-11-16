initialX = ones(1,40); 
i = 1; 
val = 1;  
while i < 25
    initialX(i) = val; 
    initialX(i+1) = val; 
    i = i + 2; 
    val = val * -1; 
end 
sign = 1; 
while i < 40
    initialX(i) = val; 
    initialX(i+1) = val; 
    i = i + 2; 
    sign = sign * -1; 
    val = rand() * sign; 
end

x = localSearch(@bwop, @bwopProposal, initialX, .001,-1,1,10,0.05); 

% initialX is chosen such that the first 12 leg/foot movement are big (so values between -1 and 1), so
% that runner has a good start. then, the later value pairs are set to random
% values between -1 and 1 with alternating signs to emulate alternating
% feet movement (left,right,left,.. and so on). 

% bwopProposal chooses a random pair to alter. More explanation in the
% class

% lowerBoundOnX and upperBoundOnX set to -1 and 1 since it's what bwop
% function expects 

% epsilon set to a 0.001, after trial and error; inputing a bigger value
% tends make runner fall sooner around the 6 meter mark 

