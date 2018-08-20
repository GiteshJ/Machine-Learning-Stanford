function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
t=X*theta;
z=sigmoid(t);
for i=1:m,
  exp= ((-y(i)*log(z(i))) - ((1-y(i))*log(1-z(i))));
  J=J+exp;
end
exp=0;
for i =2:length(theta),
  exp =exp + (theta(i)*theta(i));
 end
exp=lambda*exp/2 ;
J=(J+exp)/m;
%for theta 0
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



% =============================================================

end