//Write a program to span Column Space of any 3*3 matrix 
clc;clear;close;
h=3
disp("Pls enter elements for matrix A")
for i=1:h
    for j=1:h
        a(i,j)=input("Enter the element ")
    end
end
disp('The matrix entered is ')
disp(a)
//a=[1 2 3;4 5 6;7 8 9]
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
disp(a)
a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
disp(a)
a(1,:)=a(1,:)/a(1,1)
a(2,:)=a(2,:)/a(2,2)
disp(a)
for i=1:h
    for j=i:h
        if(a(i,j)<>0)
            disp('is a pivot element',j,'column')
            break
        end
    end
end
