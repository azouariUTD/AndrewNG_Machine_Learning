function J = costFunctionJ( X, y, theta )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m = size(X,1);
predictions = X*theta;
sqrErrors = (predictions-y).^2;

J = 1/(2*m) * sum(sqrErrors);

end

