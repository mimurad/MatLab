function jacobi(A,b,n,tol,it,x0)
clc
ArgM = [A b]

ref=zeros(1,n);
err(1:n)=1;
x0=zeros(1,n);
for k=1:it
    for i=1:n
        x(i)=b(i);
        for j=1:n
            if(i~=j)
                x(i)=x(i)-A(i,j)*x0(j);
            end
        end
        x(i)=x(i)/A(i,i);
        if(abs(x(i)-x0(i))<=tol)
            err(i)=0;
        end
    end
    if(ref==err)
        break
    end
    x0=x;
end
if(ref==err)
    Number_of_iteration=k
    Solution=x
else
    disp('The solution is not converging')
end
end
