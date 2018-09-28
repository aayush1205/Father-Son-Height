%Importing the data set available
data = load('Pearson.txt');
%Declaring Father's and Son's height in variables
X = data(:,1) ; y = data(:,2);
m=length(y);
%Adding bias to Father's Height
X = [ones(m,1) , data(:,1)];
%generating theta
theta = pinv(X'*X)*X'*y;

