clc;clear;close;
s=3
disp("Enter elements for matrix A")
for i=1:s
    for j=1:s
        A(i,j)=input("Enter your element ")
    end
end

disp(A,'The given Matrix is')
u0=[1 1 1]';
disp(u0,'The initial vector is ')
v=A*u0;
a=max(u0);
disp(a,'First approximation to eigen value is found as');
while abs(max(v)-a)>0.002
    disp(v,"current eigen vector is")
    a=max(v);
    disp(a,"current eigen value is")
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),'The largest Eigen Value is :')
format('v',5);
disp(u0,'The corresponding Eigen Vector is :')
