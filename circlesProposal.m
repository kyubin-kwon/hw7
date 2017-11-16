function out=circlesProposal(x)
% has a larger chance of using wideScaleRandomNoisePairProposal to help get
% a decent arrangement, and has a lower chance of moving a smaller circle
% in the middle of three other circles.

if rand() < 0.6
    out=wideScaleRandomNoisePairProposal(x);
else
    low = -1;  
    high = 1; 
    e = (high-low).*rand() + low; 
    radius = 10^e; 

    ind1 = randi(numel(x)/2)*2 - 1; 
    ind2 = randi(numel(x)/2)*2 - 1; 
    ind3 = randi(numel(x)/2)*2 - 1; 
    ind4 = randi(numel(x)/4)*2 - 1; 

    if ind1 ~= ind2 && ind2 ~= ind3 && ind3 ~= ind1 && (ind4 ~= ind1) && (ind4 ~= ind2) && (ind4 ~= ind3)
        midpoint = [(x(ind1)+x(ind2)+x(ind3))/3, (x(ind1+1)+x(ind2+1)+x(ind3+1))/3];
        x(ind4) = midpoint(1) + rand()*2-1;
        x(ind4+1) = midpoint(2) + rand()*2-1;
    else
        x(ind4) = radius*rand()*2-1;
        x(ind4+1) = radius*rand()*2-1;
    end
    out = x;
end 