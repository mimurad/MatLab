function x = gausjordan(a)
tam = size(a);
fil=tam(1,1);
col=tam(1,2);
for k = 1:fil,
   may = abs(a(k,k));
   pos = k;
   y=a,
   for i=k+1:fil,
      if may < abs(a(i,k))
         may=abs(a(i,k));
         aux=a(i,:);
       a(i,:)=a(k,:);
       a(k,:)=aux;
      end
   end
   y=a;
   for i = 1:fil,
      if i ~= k
         pivote=a(i,k)/a(k,k);
         for j = k:col,
            a(i,j) = a(i,j) - pivote*a(k,j);
         end
      end
      y=a
   end
end
for i = 1:fil,
   a(i,col)= a(i,col)/a(i,i);
   a(i,i)=1;
end
y=a
for i=1:fil,
   x(i)=a(i,col);
end
 