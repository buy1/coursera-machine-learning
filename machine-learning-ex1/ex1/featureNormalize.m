function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
%aka the mean
mu = zeros(1, size(X, 2)); % returns a 1 by the number of columns of zeros
%aka the standard deviation
sigma = zeros(1, size(X, 2)); % returns a 1 by the number of columns of zeros

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.

%mean(A) if A is a vector returns the mean of the 
mu=mu + mean(X); % returns a 1 by the number of columns of the mean of each feature
sigma=sigma + std(X); % returns a 1 by the number of columns of the std of each feature
X_norm=(X-mu)./sigma;

%X_norm should be the same size as X







% ============================================================

end
