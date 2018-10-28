clear all
close all
clc

% Ætlumst til að gagnamappan sé inni í sömu möppu og main.m
mappa = pwd + "/Platform all subjects/";
directory = dir(mappa);

data = cell(length(directory)-2, 0);

% Lesum allar .xls skrár inn í cellu
% Start at 3 because 1 and 2 are hidden pointers.
for i=3:length(directory)
	data{i-2} = xlsread(mappa + directory(i).name);
end

% Breytum 59 í 1 og 20 í 0.
for i=1:length(data{end})
    if data{end}(i,2) == 59
        data{end}(i,2) = 1;
    end
    if data{end}(i,2) == 20
        data{end}(i,2) = 0;
    end
end

% Finna fjölda stumula og meðaltíma þeirra.
[stimuli, averageTime] = averageTime(data{end});

disp("Heildarfjöldi stimuli er " + stimuli + ".");
disp("Meðaltími hvers stimulus er " + averageTime + " sekúndur.");
