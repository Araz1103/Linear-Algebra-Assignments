str = input("Enter a 3x4 augmented matrix which has spaces to seperate", "string")
v = evstr(strsplit(str, " "))

init11=v(1)
init12=v(2)
init13=v(3)
init21=v(5)
init22=v(6)
init23=v(7)
init31=v(9)
init32=v(10)
init33=v(11)



sec1=v(4)
sec2=v(8)
sec3=v(12)
A=[init11,init12,init13,sec1;init21,init22,init23,sec2;init31,init32,init33,sec3]

n=3;
for k=2:n
    for j=2:n+1
        A(k,j)=A(k,j)-A(1,j)*A(k,1)/A(1,1);
    end
    A(k,1)=0;
end
for i=3:n
    for j=3:n+1
        A(i,j)=A(i,j)-A(2,j)*A(i,2)/A(2,2);
    end
    A(i,2)=0;
end
x(n)=A(n,n+1)/A(n,n);for i=n-1:-1:1
    sumk=0;
    for k=i+1:n
        sumk=sumk+A(i,k)*x(k);
    end
    x(i)=(A(i,n+1)-sumk)/A(i,i);
end
disp(x(3),x(2),x(1),'Tha values of x,y,z are');
disp(A(1,1),A(2,2),A(3,3),'The pivots are');
