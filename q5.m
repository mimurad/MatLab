function q5()
A=[2 3 3;9 6 2;1 1 8];
B=[1 1 1;2 2 2;3 3 3];
a=[2;2;8];
b=[1;1;1];

ANS1=A*B %mat mul
ANS2=A*a %mat mul
%ANS3=B*b' % B=3 x 3 matrix where b' is 1 x 3 matrix
%ANS4=a*A  % a= 3 x 1 mar=trix where A is 3 x 3 matrix
ANS5=b'*B  
ANS6=a'*b
ANS7=a*b'
ANS8=a.*b  % element by element 
ANS9=A.*B  % element by element 

