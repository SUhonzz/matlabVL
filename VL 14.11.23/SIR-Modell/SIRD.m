function uPunkt= SIRD(t,u)
%Pandemie-Welle mit SIR-Modell

N = sum(u); %Gesamtpopulation
T = 4; %Anzahl der Tage an denen ein Erkrankter infektiös ist.
gamma = 1/T; 
beta = gamma*2;
mue = gamma/20;
uPunkt = [-beta*u(1)*u(2)/N
          beta*u(1)*u(2)/N-gamma*u(2)
          gamma*u(2)
          mue*u(2)];
end