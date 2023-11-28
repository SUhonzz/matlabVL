function uPunkt = bungee(t, u)
%Modell eines Bungee-Sprungs
L=100; % Seillänge in m
k= 50; % Ersatzfederkonstante des Seils in N/m
m = 80; % Gewicht des Springers in kg
g = 9.81; % Fallbeschleunigung
A = 0.2; % Springer wird als Kugel angenähert --> A= Querschnittsfläche
rho = 1.3; % Luftdichte auf Meeresniveau
cw = 0.4; % aerodynamischer Formfaktor einer Kugel

a = g - 0.5/m*rho*cw*A*u(2)^2;

if u(1) >= L % Phase 2 und 3
    a = a -k/m*(u(1)-L);
end 

uPunkt = [u(2) %Zeilenvektor - kann auch mit Strichpunkte schreiben, ist so aber übersichtlicher.
          a
          0];%Dritte Zeile für die Variante mit den Haarspitzen

