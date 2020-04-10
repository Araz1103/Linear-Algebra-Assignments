clc;clear;close;
s=3
disp("Enter the elements for matrix A")
for i=1:s
    for j=1:s
        A(i,j)=input("Enter your element ")
    end
end
disp(A,'A=');
[m,s]=size(A);
for k=1:s
    V(:,k)=A(:,k);
    for j=1:k-1
        R(j,k)=V(:,j)'*A(:,k);
            V(:,k)=V(:,k)-R(j,k)*V(:,j);
     end
     R(k,k)=norm(V(:,k));
     V(:,k)=V(:,k)/R(k,k);
end
disp(V,'Q is');
