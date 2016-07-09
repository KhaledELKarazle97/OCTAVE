pkg load 'statistics'
mu = [0,0]; %// data
sigma = [1 0; 0 1]; %// data
x = -3:.1:3; %// x axis
y = -3:.1:3; %// y axis

[X Y] = meshgrid(x,y); %// all combinations of x, y
Z = mvnpdf([X(:) Y(:)],mu,sigma); %// compute Gaussian pdf
Z = reshape(Z,size(X)); %// put into same size as X, Y
%// contour(X,Y,Z), axis equal  %// contour plot; set same scale for x and y...
surf(X,Y,Z) %// ... or 3D plot
