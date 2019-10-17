%% mutualinfo 

function mutualinfo = MI(variable1,variable2);

if size(variable1,2)>size(variable1,1)
    variable1 = variable1';
end

if size(variable2,2)>size(variable2,1)
    variable2 = variable2';
end

% One predictor
if size(variable1,2) == 1 
    mutualinfo = EN(variable1) + EN(variable2) - JEN([variable1 variable2]);

    % Two or more predictors
elseif size(variable1,2) >= 2  
   mutualinfo = JEN(variable1) + EN(variable2) - JEN([variable1 variable2]);
end

