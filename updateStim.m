function newStim = updateStim(stim)

for i=1:length(stim)
    if stim(i,2) == 59
        stim(i,2) = 1;
    end
    if stim(i,2) == 20
        stim(i,2) = 0;
    end
    
    newStim = stim;
end