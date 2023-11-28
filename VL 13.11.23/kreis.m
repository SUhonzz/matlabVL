t_vec=linspace(0,6*pi,360);
hold on
axis([-3 5 -2 6])%Limitiert die Darstellung der Achsen
for t=t_vec
    x=3*cos(t/3)+1;
    y=3*sin(t/3)+2;
    plot(x,y,'o')
    drawnow
    pause(0.1)
end
grid on
