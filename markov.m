A = [.8 .2 .1; .1 .7 .3; .1 .1 .6]
axis([0 1 0 1]); axis('square')
plot(0,0); hold on
title("Markov Chain"); xlabel('a'); ylabel('b'); grid
but = 1
while but == 1
[a,b,but] = ginput(1)
u=[a;b;1-a-b];
x=u; k=[0:1:7];
while length(x) <= 7
u = A*u; x=[x u]
end
plot(x(1,:), x(2,:), x(1,:), x(2,:), 'o');
end
hold off