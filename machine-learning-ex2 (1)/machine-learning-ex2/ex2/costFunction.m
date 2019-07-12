function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

hi = theta' * X';
z = hi';

[g]=sigmoid(z);

post =  -y .* log(g);
nega=  (1-y).* log(1-g);
srm= post - nega;

J = 1/(m) * (sum(srm));

guy= g-y;
b = size(X,2);
gy = zeros (m, b);

for j=1:b;
for i=1:m;
gy(i,j)= guy(i, 1);
end
end
error= gy .* X;

for c=1:b;

jdiff(c,1) = (1/m) .* sum(error(:,c));

grad = [jdiff];



% =============================================================

end

