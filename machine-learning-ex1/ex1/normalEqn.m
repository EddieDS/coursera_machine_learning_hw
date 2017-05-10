function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% formula is (1/A)*b where A = X'X and b = X'y
% pinv can find A^-1 or
% just use A\b to directly get matrix inverse vector product
theta = (X' * X) \ (X' * y);

% ============================================================

end
