%x = localSearch(@arrangeCircles, @wideScaleRandomNoisePairProposal, (1:20),0.1,0,20,10,0.01)
x = localSearch(@arrangeCircles, @circlesProposal, (1:20),0.1,0,20,10,0.01)

% We use multiple proposals, either wideScaleRandomNoisePairProposal or our
% own circlesProposal. We chose wideScaleRandomNoisePairProposal because we 
% want to change one 'circle' at a time.

% We picked epsilon of 0.1 because we want to allow for a small 
% number of 'bad' moves, which may lead to better arrangements later on.
% lowest x and highest x set to 1,20 to keep it within the input range 

% experimented with different epsilon values - 0.6, 0.1, 0.01 etc. 
% 0.6 often gave a big number of around 43, and there was little
% discernible difference between 0.1 and 0.01.

% circlesProposal picks 3 circles and moves a different circle (from the
% first half of the list) to the midpoint of those 3 circles, with some
% variation in the exact coordinate. this allows for smaller circles to 
% potentially fit between the gaps of other circles. 

% From this we got a best result of 39.7665.