 f=@(x) cos(x)-3*x+1
 %this is the derivative of the above function
 df=@(x) -sin(x)-3
 x0=1.1;
 x=x0;
 for i=1:1:100
 x1=x-(f(x)/df(x));
 x=x1;
 end
 sol=x;
 fprintf('Approximate Root is %.15f',sol)
 x0=1.1;
 x=x0;
 er(10)=0;
 for i=1:1:10 
 x1=x-(f(x)/df(x))
 x=x1;
 er(i)=x1-sol;
 end
 plot(er)
 xlabel('Number of iterations')
 ylabel('Error')
 title('Error Vs. Number of iterations')