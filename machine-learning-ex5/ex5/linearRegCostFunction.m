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
n=size(X,2);
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = (theta' * X')';
hy=h-y;
sqrerror = (h-y).^2;;
Junreg = 1/(2*m) * (sum(sqrerror));;
gy= repmat(hy,1,n);
error=gy.*X;
error1=(sum(error))';
grad0= (1/m)* error1;

theta(1)=0;
Jreg= (lambda/(2*m))*sum((theta.^2));
J=Junreg + Jreg;

grad= grad0 + ((lambda/m)*(theta));



% =========================================================================

grad = grad(:);

end
