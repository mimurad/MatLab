function LU_factorisation(A,b,n)
% A=[27 6 -1;6 15 2;1 1 54]
% b=[85;72;110]
    clc
    disp('The augmented matrix is ')
    A
    b
% Creating L,U such that LU=A
    [L,U]=lu(A)
% Finding Y from LY=b
AugY=[L b]
    y=[];
    y(1)=AugY(1,n+1);
    for i=2:n
        p=0;
        for j=1:i-1
            p=p+y(j)*AugY(i,j);
        end
        y(i)=AugY(i,n+1)-p;
    end
    Sub_Solution_Y = y
% Finding X from UX=Y
    y=y';
    AugX=[U y]
    x=[];
    x(n)=AugX(n,n+1)/AugX(n,n);
    for i=n-1:-1:1
        p=0;
        for j=i+1:n
            p=p+x(j)*AugX(i,j);
        end
        x(i)=(AugX(i,n+1)-p)/AugX(i,i);
    end
    Solution_X = x

end