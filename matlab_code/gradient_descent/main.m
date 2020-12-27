x = sym('x',[1 2]);
f(x) = 0.5*x(1)^2 + 0.5*x(2)^2;
x1 = [4, 3];
e = 0.01;

prompt = 'Select exercise 1(i), 1(ii), 1(iii), or 1(iv) (type i, ii, iii or iv):  ';
exercise = input(prompt, 's');

switch exercise
    
    case 'i'
    % exercise 1(i) dataset:
    r = 0.1;   kmax = 200;
    case 'ii'
    % exercise 1(ii) dataset:
    r = 1;   kmax = 100;
    case 'iii'
    % exercise 1(iii) dataset:
    r = 2;   kmax = 20;
    case 'iv'
    % exercise 1(iv) dataset:
    r = 10;   kmax = 3;
end

grad_des(f, x, e, r, x1, kmax)


