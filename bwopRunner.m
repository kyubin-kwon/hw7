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

%x = localSearch(@bwop, @wideScaleRandomNoisePairProposal, initialX,.01,-1,1,10,0.01); 
x = localSearch(@bwop, @bwopProposal, initialX, .001,-1,1,10,0.05); 