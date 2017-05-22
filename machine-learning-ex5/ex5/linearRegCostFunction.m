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

% save difference vector for reuse
d = (X * theta) - y;
% thetas without theta0 for regularization
t = theta(2:end, :);

% assumption: d, t are 1-dimensional
J = ((1 / (2 * m)) * d' * d) + (lambda / (2 * m)) * sum(t .^ 2);

grad = ((1 / m) * X' * d) + ((lambda / m) * [0; t]);


% =========================================================================

grad = grad(:);

end
