function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% disp("-----------------------------------------------------")

% k=exp(-z);
% k=k+1;

% for iter = 1: size(k)
	% k(iter) = 1/k(iter);
% end

g = 1 ./ (1 + e.^-z);


% =============================================================

end
