function gauss_e_wp(A,b,n,m)
clc
disp('The augmented matrix is ')
Aug=[A b]
%Creating upper traingular matrix
for j=1:n-1
    for i=j+1:n
        p=Aug(i,j)/Aug(j,j);
        Aug(i,j:n+1)=Aug(i,j:n+1)-p*Aug(j,j:n+1);
    end
end
Aug
%pivoting
for i=1:n
    for j=1:n
        if Aug(j,j)==0
            m=j;
            for k=j:n
                if Aug(k,j)~=0
                    s=k;
                end
            end
            p= Aug(j,1:n);
            Aug(j,1:n)=Aug(k,1:n);
            Aug(k,1:n)=p;
        end
    end
end
Aug
%Calculating result
x=[];
x(n)=Aug(n,n+1)/Aug(n,n);
for i=n-1:-1:1
    p=0;
    for j=i+1:n
        p=p+x(j)*Aug(i,j);
    end
    x(i)=(Aug(i,n+1)-p)/Aug(i,i);
end
Solution = x
end