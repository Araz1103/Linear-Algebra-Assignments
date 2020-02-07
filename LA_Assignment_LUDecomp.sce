str = input("Enter a 3x3 matrix which has spaces to seperate", "string")
v = evstr(strsplit(str, " "))


c11=v(1)
c12=v(2)
c13=v(3)
c21=v(4)
c22=v(5)
c23=v(6)
c31=v(7)
c32=v(8)
c33=v(9)



a=[c11,c12,c13;c21,c22,c23;c31,c32,c33]
u=a;
disp(a,'the given matrix found out is a=')
m=det(u(1,1));
n=det(u(2,1));
as=n/m;
u(2,:)=u(2,:)-u(1,:)/(m/n);
n=det(u(3,1));
b=n/m;
u(3,:)=u(3,:)-u(1,:)/(m/n);
m=det(u(2,2));
n=det(u(3,2));
c=n/m;
u(3,:)=u(3,:)-u(2,:)/(m/n);
disp(u,'the upper triangular matrix is found out to be u=')
l=[1,0,0;as,1,0;b,c,1];
disp(l,'the lower triangular matrix is found out to be l=')
