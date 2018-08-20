function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
t=X*theta;
z=t;
for i=1:m,
  exp= (z(i)-y(i))^2;
  J=J+exp;
end
exp=0;
for i =2:length(theta),
  exp =exp + (theta(i)*theta(i));
 end
exp=lambda*exp ;
J=(J+exp)/(2*m);
gradcal=0;
for i=1:m,
  
  exp1=  (z(i)-y(i))*X(i,1);
  gradcal=gradcal +exp1;
  
end
gradcal=gradcal/m;
  grad(1)=gradcal;
  %for theta 1 to n
for j= 2:length(theta),
  gradcal=0;
 
for i=1:m,
  
  exp1=  (z(i)-y(i))*X(i,j) +(lambda*theta(j)/m);
  gradcal=gradcal +exp1;
  
end
gradcal=gradcal/m;
  grad(j)=gradcal;
end













% =========================================================================

grad = grad(:);

end
