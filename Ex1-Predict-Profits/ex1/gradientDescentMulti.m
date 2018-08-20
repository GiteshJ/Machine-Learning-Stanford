function [theta] = gradientDescentMulti(X, y, theta, alpha, num_iters)

m = length(y); 

for iter = 1:num_iters,
j0=j1=j2=0;

  for i= 1:m,
   
    
    h=theta(1)+(theta(2)*X(i,2))+(theta(3)*X(i,3));
   j1=j1+(h-y(i))*X(i,2);
    j2=j2+(h-y(i))*X(i,3);
    j0=j0+(h-y(i))*1;
  end;
  disp(theta);
  j1=(alpha*j1)/m;
  j2=(alpha*j2)/m;
  j0=(alpha*j0)/m;
  temp0=theta(1)-j0;
  temp1=theta(2)-j1;
  temp2=theta(3)-j2;
  theta=[temp0;temp1;temp2];
  
  
end
end
