%% entropy

function H = EN(variable1)

for i = 1:size(variable1,2)
    [uvals, ~, uidx] = unique(variable1);
    output = [uvals, accumarray(uidx, 1)];
    P = output(:,2) / sum(output(:,2));
    H(i) = -sum(P .* log2(P));
end