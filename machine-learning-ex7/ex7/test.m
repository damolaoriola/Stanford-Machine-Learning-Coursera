X=[1;4;6;8;7;2;4;9];
randidx = randperm(size(X, 1));
% Take the first K examples as centroids
centroids = X(randidx(1:7), :)
     