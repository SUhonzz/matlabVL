function x = falltiefe(L)
optionen = odeset("Events",@unten);
%optionen = odeset("Events",@oben);
[~,u] = ode45(@bungee,[0 25], [0 0 L], optionen);%L ist die Siellänge (für die Variante mit den Haarspitzen)

x = u(end,1);

%Falltiefe in Abhängigkeit von der Seillänge