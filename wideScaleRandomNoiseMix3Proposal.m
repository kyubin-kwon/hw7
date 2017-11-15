function out=wideScaleRandomNoiseMix3Proposal(x)
% Runs a random one of the three wideScaleRandomNoise proposal functions on
% the input
i = randi(3); 
if i == 1 
    out = wideScaleRandomNoiseProposal(x); 
if i == 2 
    out = wideScaleRandomNoiseOneCoordinateProposal(x); 
else
    out = wideScaleRandomNoisePairProposal(x); 
end 
end 