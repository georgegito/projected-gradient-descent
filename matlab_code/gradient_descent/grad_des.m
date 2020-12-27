function res = grad_des(f, x, e, r, x1, kmax)
    
    k = 1;
    xk = x1;
    gradf = gradient(f, x);
    x1arr = xk(1);
    x2arr = xk(2);
    fval = [f(xk(1), xk(2))];
    
    while norm(gradf(xk(1), xk(2))) > e 
    
        xk = xk - (r*gradf(xk(1), xk(2))).';
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
    title('gradient descent');
	xlabel('x_1 values');
    ylabel('x_2 values');
    hold off;
        
    figure;
    plot(fval, '-o', 'linewidth', 1.5);
    title('gradient descent');
    xlabel('k values');
    ylabel('f(x_k) values');
    grid on;
    
    res = [vpa(x1arr(k)), vpa(x2arr(k)), k];
end