function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%   

a=size(g);
row=a(1);
for i= 1: row,
  for j =1: a(2),
    sig= 1/(1+exp(-z(i,j)) );
    g(i,j)=sig;
  end
end




% =============================================================

end
