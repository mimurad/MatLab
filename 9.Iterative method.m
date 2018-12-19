function Iterative_method(F,x0,n,tol)
% F is the function such that x=F(x)
% x0 is first approximation
% n is the number of iteration
% tol is the tolerance
clc
for i=1:n
    x=F(x0);
    if x0==x || abs(abs(x)-abs(x0))<tol
        Approximate_Root = x
        Number_of_iteration = i
        return
    end
    x0=x;
end
fprintf('root not found\n')
end