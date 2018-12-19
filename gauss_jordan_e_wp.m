function gauss_jordan_e_wp(A,b,n,m)
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
%Making diagonals 1
for j=1:n
    for i=1:n
        Aug(j,i:n+1)=Aug(j,i:n+1)/Aug(j,j);
    end
end
Aug
%Creating canonical form
for j=n:-1:2
    for i=j-1:-1:1
        Aug(i,1:n+1) = Aug(i,1:n+1)- Aug(i,j)*Aug(j,1:n+1);
        Aug
    end
end
%solution
Aug(1:n,n+1)
end