function root_interval(f,a0,b0)
clc
n=10001;
a=[];
b=[];
x=linspace(a0,b0,n);
y=f(x);
k=0;
for i=1:(n-1)
    if y(i)*y(i+1)<0
        a=[a x(i)];
        b=[b x(i+1)];
        k=k+1;
    end
end
if size(a,1)==0
    warning('no roots were found')
else
    fprintf('There are %d roots\n\n',k)
    disp('The intervals are:')
    for i=1:k
        fprintf('   [%.4f , %.4f]\n',a(i),b(i))
    end
end
end