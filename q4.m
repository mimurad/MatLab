function q4()
t=0:pi/50:2*pi;
r = 2;
h = 1;
x = r * sin(t);
y = r * cos(t);
z = h/(2*pi) * t;   
plot3(x,y,z)