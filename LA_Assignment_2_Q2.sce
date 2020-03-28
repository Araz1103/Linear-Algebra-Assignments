//Write a program to find 4 Fundamental Subspaces for any 3*3 matrix 
clear;close;
clc;
h=3
disp("Enter elements for the matrix B")
for i=1:h
    for j=1:h
        B(i,j)=input("Enter element ")
    end
end
disp('The given matrix is ')
//B=[0 1 0;0 0 1;0 0 0];
disp(B,'B=');
[m,h]=size(B);
disp(m,'m=');
disp(h,'h=');
[v,pivot]=rref(B);
disp(rref(B));
disp(v);
r=length(pivot);
disp(r,'rank is=')
cs=B(:,pivot);
disp(cs,'Column Space is found = ');
ns=kernel(B);
disp(ns,'Null Space is found = ');
rs=v(1:r,:)';
disp(rs,'Row Space is found = ')
lns=kernel(B');
disp(lns,'Left Null Space is found = ');
