function q6()
figure(1);
clf;
hold on;
grid on;
x=-2:.2:2;
y=-2:.2:2;
[X,Y]= meshgrid(x,y);
Z=-X-Y;
surf(X,Y,Z);
surf(X+1,Y+1,Z+1);
surf(X-1,Y-1,Z-1);
view(35,35);
hold off;