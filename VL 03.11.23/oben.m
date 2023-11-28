function [ val term dir ] = oben (t, u)
%detektiert den tiefsten Punkt des Bungee-Sprungs
val = u(2); % Geschwindigkeit = u(2)
term = 1;
dir = 1;