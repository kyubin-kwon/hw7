x = localSearch(@arrangeCircles, @wideScaleRandomNoisePairProposal, (1:20),0.1,1,20,10,0.01); 

% chose wideScaleRandomNoisePairProposal because we want to change one
% 'circle' position at a time 
% epsilon of 0.1 because we want to allow for a small room of 'bad' moves 
% lowest x and highest x set to 1,20 to keep it within the input range 

% experimented with different epsilon values - 0.6, 0.1, 0.01 etc. 
% 0.6 often gave a big number of around 43, and there was little
% discernible difference between 0.1 and 0.01.