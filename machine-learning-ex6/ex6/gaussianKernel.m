function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

% We want the length of the vector that represents the distance
% between x1 and x2. The formula for the Gaussian kernel uses
% norm(x1 - x2)^2 as the numerator, and is equivalent to using
% sum((x1 - x2).^2).
% Norm is the length/size of a vector, aka 'magnitude'.

% sim = exp(-(sum((x1 - x2) .^ 2)) / (2 * sigma ^ 2));
sim = exp(-(norm(x1 - x2) ^ 2) / (2 * sigma ^ 2));


% =============================================================
    
end
