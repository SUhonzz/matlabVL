function [val term dir] = boden(~,u)
    %Wann ist der Boden wieder erreicht?
    val = u(3);
    term = 1;
    dir = -1;

end