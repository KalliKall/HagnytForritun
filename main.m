clear all
close all
clc

%Ætlumst til að gagnamappan sé inni í MATLAB möppunni

mappa = pwd + "/Platform all subjects";
stim = xlsread(mappa + "/Stimuli.xlsx");

% Breytum 59 í 1 og 20 í 0.
for i=1:length(stim)
    
    if  stim(i,2) == 59
        
        stim(i,2)=1;
    end
    if stim(i,2) == 20
         stim(i,2)=0;
    end
end


[len, averageTime] = averageTime(stim)