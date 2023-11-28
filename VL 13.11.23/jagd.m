%Live Verfolgung der Katze 
clear 
close all
t_step = 0.1;
[t,r] = ode45(@fang_die_Katz,0:t_step:12*pi,[10,2]);

plot(r(1,1),r(1,2),'rx')
xlim([-2 11]);
ylim([-2 6]);

k = katze(t)';%Vektor muss transponiert werden, damit ein Spaltenvektor daraus wird.
hold on
for i = 1:length(t)
    h1 = plot(r(i,1),r(i,2),'ro'); % 'ro'=Robo
    h2 = plot(k(i,1),k(i,2),'ko'); % 'o'=Katze
    pause(t_step)
    delete(h1);%vorherige Position wird gelöscht
    delete(h2);%--//--
    h1 = plot(r(i,1),r(i,2),'r.');%Spur von Robo
end
h1 = plot(r(end,1),r(end,2),'ro'); %Endposition Robo
h2 = plot(k(end,1),k(end,2),'ko'); %Endposition Muine


