clear all
close all
clc

%Ætlumst til að gagnamappan sé inni í MATLAB möppunni

mappa = pwd + "/Platform all subjects";
stim = xlsread(mappa + "/Stimuli.xlsx");
