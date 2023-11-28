function k=katze(t)
%Position der Katze zu einem Zeitpunkt
rho = 3;
%Lässt die Katze im Kreis laufen
k = rho*[cos(t'/3); sin(t'/3)]+[1;2];%t'= transpontiert

%k= [0*t'; t'];%Lässt die Katze nur in eine Richtung fliehen