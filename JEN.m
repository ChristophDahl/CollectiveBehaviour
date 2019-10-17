%% joint entropy

function H = JEN(V)
vx = cumsum([1; any([(diff(sortrows(V)))~=0]')']);
H = EN(vx);