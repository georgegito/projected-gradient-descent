function res = grad_des(f, x, e, r, x1, sk, kmax)
    
    k = 1;
    xk = projection(x1);
    
    gradf = gradient(f, x);
    x1arr = xk(1);
    x2arr = xk(2);
    fval = [f(xk(1), xk(2))];
    
    while norm(gradf(xk(1), xk(2))) > e 
    
        xk = xk + r*(projection(xk - (sk*gradf(xk(1), xk(2))).') - xk);
   
        k = k + 1;
        fval = [fval, f(xk(1), xk(2))];
        x1arr = [x1arr, xk(1)];
        x2arr = [x2arr, xk(2)];
        if k == kmax
            break;
        end
    end
  
    figure;
    plot_dir(x1arr, x2arr);
    hold on;
    fcontour(f, 'linewidth', 1.5);
    title('gradient descent with projection');
	xlabel('x_1 values');
    ylabel('x_2 values');
    % -20 <= x1 <= 10, -12 <= x2 <= 15
    rectangle('position',[-20 -12 30 27],  'linestyle', ':', 'edgecolor', 'r', 'linewidth', 1.5);
    
    figure;
    plot(fval, '-o', 'linewidth', 1.5);
    title('gradient descent with projection');
    xlabel('k values');
    ylabel('f(x_k) values');
    grid on;
    
    res = [vpa(x1arr(k)), vpa(x2arr(k)), k];
end