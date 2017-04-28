function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%{
%Brute Force Non Vectorized Version
h = X * theta;%h(x) = theta0 + theta1x1
error = h -y;%h(x) - y
error_sqr = error.^2;%(h(x)-y)^2
q = sum(error_sqr);
d = 1/(2*m);
J = q * d;

%}

%Vectorized Version of the cost function
J = 1/(2*m) * (X*theta - y)' * (X*theta - y);





% =========================================================================

end
