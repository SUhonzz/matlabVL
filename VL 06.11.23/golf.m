function uPunkt = golf(~,u) % uPunkt ist die Rückgabevariable und "golf()" ist der Name der Fkt.
%Modell eines Golfabschlages unter Berücksichtigung des Luftwiderstandes
g = 9.81; %Erdbeschleunigung
%g_vec = [0 0 1]'*g; g-Vektor für Variante
m = 0.046; %Masse des Golfballs in kg --> 46g =(4.6e-2)
rho = 1.4; %Luftdichte
cw = 0.1; %aerodynamischer Formfaktor eines Golfballs mit Dellen, ohne Dellen cw=0.4
r = 0.021; %Radius in Meter --> 2mm =(2.1e-2)
A = r^2*pi; %Querschnittsfläche
c = rho*cw*A/2/m; %Kürzel für den Betrag des Luftwiderstandsvektor
v = u(4:6); %Geschwindigkeitsvektor Komponenten 4 bis 6

uPunkt = [u(4)                 %Zeilenvektor
          u(5)
          u(6)
          -c*norm(v)*u(4)
          -c*norm(v)*u(5)
          -c*norm(v)*u(6)-g]; %norm(v) = Betrag der Geschwindigkeit

%uPunkt = [v                        andere Variante
%          -c*norm(v)*v - g_vec];
end