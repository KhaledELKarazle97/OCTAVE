figure('Position', [100 100 1200 600])

n = 50;
Sigma = [2 1.8; 1.8 2];

for i=1:4
    means = [0 0; i*2 0];

    
    X = [bsxfun(@plus, means(1,:), randn(n,2) * chol(Sigma)); ...
         bsxfun(@plus, means(2,:), randn(n,2) * chol(Sigma))];
    X = bsxfun(@minus, X, mean(X));
    [U,S,V] = svd(X,0);
    [ind, centroids] = kmeans(X,2, 'Replicates', 100);

    subplot(2,4,i)
    scatter(X(:,1), X(:,2), [], [0 0 0])

    subplot(2,4,i+4)
    hold on
    scatter(X(ind==1,1), X(ind==1,2), [], [1 0 0])
    scatter(X(ind==2,1), X(ind==2,2), [], [0 0 1])
    plot([-1 1]*10*V(1,1), [-1 1]*10*V(2,1), 'k', 'LineWidth', 2)
    plot(centroids(1,1), centroids(1,2), 'w+', 'MarkerSize', 15, 'LineWidth', 4)
    plot(centroids(1,1), centroids(1,2), 'k+', 'MarkerSize', 10, 'LineWidth', 2)
    plot(centroids(2,1), centroids(2,2), 'w+', 'MarkerSize', 15, 'LineWidth', 4)
    plot(centroids(2,1), centroids(2,2), 'k+', 'MarkerSize', 10, 'LineWidth', 2)

    plot([-1 1]*5*V(1,2), [-1 1]*5*V(2,2), 'k--')
end

for i=1:8
    subplot(2,4,i)
    axis([-8 8 -8 8])
    axis square
    set(gca,'xtick',[],'ytick',[])
end    