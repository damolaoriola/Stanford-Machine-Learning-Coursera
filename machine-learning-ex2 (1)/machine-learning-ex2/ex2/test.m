for i = 1:num_labels
initial_theta = zeros(n+1, 1);
options = optimset ('GradObj', 'on', 'MaxIter', 50);



[theta, J, exit_flag] = fmincg (@ (t) (lrCostFunction(t, X, y, lambda)== ;
