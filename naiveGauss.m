function A = naiveGauss(A)

% find's the size

n = size(A);
n = n(1);

B = zeros(n,1);

for k = 1 : n-1     
    for i = k+1 : n
        for j = k : n
            A(i,j) = A(i,j) - (A(i,k)/A(k,k)) *  A(k,j);
        end
        B(i) = B(i) - (A(i,k)/A(k,k))  * B(k);
    end
end