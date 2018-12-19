function Sol = GaussianElimination(A)


[i,j] = size(A);
Sol=zeros(i,j)
for j = 1:i-1


    for i = j+1:i


        Sol(i,j) = Sol(i,:) -( Sol(i,j)/(Sol(j,j)*Sol(j,:)));


    end


end


disp(Sol);


end