function rk2(a, b, h, IV)    %here a<=t<=b  and IV= initial value in vector form for m number of equations
m = size(IV,1);
if m == 1
   IV = IV';
end
N = 0:h:2;    %number of steps
t(1) = a;
w(:,1) = IV;     %initial conditions
for i = 1:(length(N)-1)
   k1 = h*f(t(i), w(:,i));
   k2 = h*f(t(i)+h, w(:,i)+k1);
   w(:,i+1) = w(:,i) + (k1+k2)/2;
   t(i+1) = a + i*h;
end
[t' w']
wexact=[cos(t)+sin(t)-exp(t)+1;
    -sin(t)+cos(t)-exp(t);
    -sin(t)+cos(t)];
p=plot(t,wexact,'red',t,w,'blue');

function dy = f(t, y)
dy = [y(2);
     -y(1) - 2*exp(t) + 1;
     -y(1) - exp(t) + 1];
 
 %sample input
 %IV=[0,0,1];
 %rk2nd(0,2,.1,IV)