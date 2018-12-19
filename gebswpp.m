function x=gebswpp(A,b)
n=length(A(:,1)); A=[A,b];
x=zeros(n,1); flag=0; NROW=1:n;
for i=1:n-1
if flag==0
M=max(abs(A(NROW(i:n),i)));
if M==0
flag=1;
else
I=find(abs(A(NROW(i:n),i))==M);
p=I(1)+i-1;
If p>i
NCOPY=NROW(i);
NROW(i)=NROW(p);
NROW(p)=NCOPY;
end;
end
If flag==0
for j=i+1:n
m=A(NROW(j),i)/A(NROW(i),i);
A(NROW(j),i:n+1)=A(NROW(j),i:n+1)-m*A(NROW(i),i:n+1);
clear m;
end;
end;
if flag==0;
if A(NROW(n),n)==0
flag=1;
end;
end;
if flag==0;
x(n,1)=A(NROW(n),n+1)/A(NROW(n),n);
for i=n-1:-1:1;
x(i,1)=(A(NROW(i),n+1)-sum(x(i+1:n,1).*A(NROW(i),i+1:n)))/A(NROW(i),i);
end;
else

end