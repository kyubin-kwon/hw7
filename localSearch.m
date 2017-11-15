
function x=localSearch(funcToOptimize,proposalFunc,startingX,epsilon,lowerBoundOnX,upperBoundOnX,timeDelta,funcDelta)
% This general-purpose optimization routine aims to minimize funcToOptimize
% starting from the initial guess startingX, via proposals generated by
% proposalFunc (the two functions are specified via function handles). When
% optimizing a function whose inputs have lower and upper bounds, the
% proposal xp=proposalFunc(x) has all of its entries that are less than
% lowerBoundOnX rounded up to lowerBoundOnX, and all of its entries greater
% than upperBoundOnX rounded down to upperBoundOnX before funcToOptimize is
% evaluated on xp (these bounds can be -inf and +inf to make them effectively 
% ignored). The proposal is accepted if it improves the function value, or does
% not make it worse by more than epsilon. The routine terminates when timeDelta
% seconds have passed without the best value found so far of funcToOptimize
% improving by funcDelta.


% do while loop, count number of seconds since last x that improved by
% funcDelta and recalculate delta
% keep changing and accepting proposal until funcDelta is good

x=startingX;
bestX=x;

startTime=now*60*60*24;
startVal=funcToOptimize(x);
keepGoing=true;
while keepGoing
    val=funcToOptimize(x);
    xp=proposalFunc(x);
    
    % round values that exceed bounds
    for i=1:size(xp)
        if xp(i) > upperBoundOnX
            xp(i) = upperBoundOnX;
        elseif xp(i) < lowerBoundOnX
            xp(i) = lowerBoundOnX;
        end
    end
    
    pval=funcToOptimize(xp);
    lastDiff=pval-val;
    if lastDiff <= epsilon
        x=xp;
        % update bestX
        if pval < funcToOptimize(bestX)
            bestX=xp;
        end
    end
    % check time since last x improved by funcDelta
    %time=now*60*60*24 - lastGoodTime;
    if now*60*60*24 - startTime >= timeDelta
        if startVal - pval < funcDelta
            keepGoing = false;
        else
            startTime = now*60*60*24;
            startVal = pval;
        end
    end
end
x=bestX;