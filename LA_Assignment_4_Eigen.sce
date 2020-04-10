clc;clear;close;
n=3
disp("Enter the elements for matrix A")
for g=1:n
    for h=1:n
        A(g,h)=input("Enter element ")
    end
end

lam=poly(0,'lam')
lam=lam
charMat=A-lam*eye(3,3)
disp(charMat,'The charateristic Matrix is equal to')
charPoly=poly(A,'lam')
disp(charPoly,'The charateristic Polynomial is equal to')
lam=spec(A)
disp(lam,'The eigen values of A are')
function[x,lam]=eigenvectors(A)
[n,m]=size(A);
lam=spec(A)';
x=[];
for k=1:3
    B=A-lam(k)*eye(3,3);
    C=B(1:n-1,1:n-1);
    b=-B(1:n-1,n);
    y=C\b;
    y=[y;1];
    y=y/norm(y);
    x=[x y];
end
endfunction

//get f('eigenvectors')
[x,lam]=eigenvectors(A)
disp(x,'The eigen vectors of A are');
