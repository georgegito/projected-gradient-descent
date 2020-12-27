x = sym('x',[1 2]);
f(x) = 0.5*x(1)^2 + 0.5*x(2)^2;

prompt = 'Select exercise (type 2, 3 or 4):  ';
exercise = input(prompt);

switch exercise
    
    case 2
    % exercise 2 dataset:
    x1 = [8, 3];   e = 0.01;   r = 0.1;   sk = 15;   kmax = 1000;
    case 3
    % exercise 3 dataset:
    x1 = [-5, 7];   e = 0.02;   r = 0.3;   sk = 20;   kmax = 20;
    case 4
    % exercise 4 dataset:
    x1 = [11, 3];   e = 0.01;   r = 0.01;   sk = 0.1;   kmax = 8000;
end

grad_des(f, x, e, r, x1, sk, kmax)




