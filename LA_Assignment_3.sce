disp("Enter the matrix Z: ")
Z = [input("Value is: "), input("Value is: "); input("Value is: "), input("Value is: "); input("Value is: "), input("Value is: ")];
disp("The matrix is: ")
disp(Z)
disp("Enter the matrix b: ")
b = [input("Enter Value: "); input("Enter Value: "); input("Enter Value: ")];
disp("The matrix is: ")
disp(b)

function leastSquares(Z,b)
    x = (Z'*Z)\(Z'*b);
    disp(x, 'x = ');
    C = x(1,1);
    D = x(2,1);
    disp(C, 'C =');
    disp(D, 'D =');
    disp('The line for best fit is b = C + Dt');
endfunction
