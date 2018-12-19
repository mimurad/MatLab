function gauss_seidel(A, b, N)
n = size(A,1);
D = diag(diag(A));
L = tril(-A,-1);
U = triu(-A,1);
Tg = inv(D-L)*U; 
cg = inv(D-L)*b;
tol = 1e-05;
k = 1;
x = zeros(n,1);
while k <= N
   x(:,k+1) = Tg*x(:,k) + cg;
   if norm(x(:,k+1)-x(:,k)) < tol
      disp('The procedure was successful')
      disp('tol was met after k iterations')
      disp(k); disp('x = ');disp(x(:,k+1));
      break
   end
   k = k+1;
end

if norm(x(:,k+1)- x(:,k)) > tol || k > N
   disp('Maximum number of iterations reached without satisfying condition:')
   disp('||x^(k+1) - x^(k)|| < tol'); disp(tol);
   disp('Please, examine the sequence of iterates')
   disp('In case you observe convergence, then increase the maximum number of iterations')
   disp('In case of divergence, the matrix may not be diagonally dominant')
   disp(x');
end
   