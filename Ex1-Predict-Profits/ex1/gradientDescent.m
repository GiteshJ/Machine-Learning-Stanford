function [theta] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    
    
    
    
    
  j=J=0;
  for i= 1:m,
    h=theta(1)+theta(2)*X(i,2);
   
    J=J+(h-y(i))*X(i,2);
    j=j+(h-y(i))*1;
  end;
  J=(alpha*J)/m;
  j=(alpha*j)/m;
  temp0=theta(1)-j;
  temp1=theta(2)-J;
  theta=[temp0;temp1];
   




    % ============================================================

    % Save the cost J in every iteration    
    
    %J_history(iter) = computeCost(X, y, theta);
     
end

end
