function d = abstand_zum_loch(v,L)
% Berechnet den Abstand von Landepunkt und Loch L
%  v Vektor Abschlaggeschwindigkeit
%  L Vektor Position des Lochs

options = odeset('Events', @z_loch);
[t,u]=ode45(@golf, [0 60], [0 0 0 v(1) v(2) v(3)], options);
P = u(end,1:3); % Landepunkt des Golfballs
d = norm(L-P);
    function [val term dir] = z_loch(~, u)
        % wann ist der Boden wieder erreicht?
        val = u(3)-L(3);
        term = 1;
        dir = -1;
    end
end