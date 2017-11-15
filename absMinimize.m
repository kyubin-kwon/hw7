x0=1000*randn(1,100); %initial guess, unfortunately far from the origin
% ONLY CHANGE THE LINE BELOW: (replace the 0's with carefully chosen positive numbers)
%epsilons=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

epsilons=[4 3 2 1 .9 .7 .65 .6 .55 .5 .45 .4 .35 .3 .25 .2 .15 .1 .05 .02 .001];
% pick a "schedule" for epsilon, that starts high, ends low, has perhaps
% 15-20 epsilons, and, when run, optimizes the function to less than 1
for eps=epsilons %loop through values in epsilons <-- must be a row vector
    for i=1:10 %run localSearch for 3 seconds per epsilon, plotting every .3 seconds
        x0=localSearch(@(x)sum(abs(x)),@wideScaleRandomNoiseProposal,x0,eps,-inf,inf,.3,inf);
        figure(100); plot(x0); title(['eps=' num2str(eps)]);drawnow;
    end
end
