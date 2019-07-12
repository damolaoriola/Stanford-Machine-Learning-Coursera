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

size(X);
hi = theta' * X';
z = hi';

[g]=sigmoid(z);

post =  -y .* log(g);
nega=  (1-y).* log(1-g);
srm= post - nega;


thetar = theta(2:end, 1);
thetasqr= thetar.^2;
thetareg=sum(thetasqr);

J1 = 1/(m) * (sum(srm));
J2 = (lambda/(2*m)) * thetareg;
J  = J1 + J2;

guy= g-y;
b = size(X,2);
gy = zeros (m, b);

for j=1:b;
for i=1:m;
gy(i,j)= guy(i, 1);
end
end
error= gy .* X;

gradzero= (1/m) * sum(error(:,1));

for c = 1:b;
gradun(c,1) = (1/m) * sum (error(:,c));

theta(1,1) =0;
gradreg(c,1) = ((lambda/m) * theta (c, 1));

grad(c,1)= gradun(c,1) + gradreg(c, 1);
end
end
