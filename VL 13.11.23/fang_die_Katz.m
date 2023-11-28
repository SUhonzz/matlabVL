function rPunkt= fang_die_Katz(t,r)
%Modell eines Staubsaugerroboters der die Katze verfolgt

rho = 3;
k = katze(t); %Spaltenvektor
rPunkt = (k - r)/norm(k-r); %muss nicht in x und y-Richtung aufgespaltet werden.