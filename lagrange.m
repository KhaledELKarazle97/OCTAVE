figure
[x,y] = meshgrid(-3:0.1:3, -3:0.1:3);
z = x .* y;


contourf(x,y,z,85) # Contour plot
hold on
line([0 3], [3 -1], 'LineWidth', 2);

p1 = [9/8 3/2];                         % First Point
p2 = [(9/8 -.4*3/2) (3/2-.4*9/8)];      % Second Point
dp = p2-p1;                             % Difference
quiver(p1(1),p1(2),dp(1),dp(2),0, 'LineWidth', 2, 'r')

hold off


surf(x,y,z)
hold on

a = [0 , 3, -10];
b = [0 , 3, 10];
c = [3 , -1, 10];
d = [3 , -1, -10];

points=[a' b' c' d']; 
fill(points(1,:),points(2,:),points(3,:),'y')

plot3(1.125,1.5,1.125*1.5,'.','MarkerSize',10)
