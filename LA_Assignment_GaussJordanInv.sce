str = input("Enter a 3x3 matrix which has spaces to seperate", "string")
v = evstr(strsplit(str, " "))


i11=v(1)
i12=v(2)
i13=v(3)
i21=v(4)
i22=v(5)
i23=v(6)
i31=v(7)
i32=v(8)
i33=v(9)



a=[i11,i12,i13;i21,i22,i23;i31,i32,i33]
n=length(a(1,:));
aug=[a,eye(n,n)];
for j=1:n-1
    for i=j+1:n
        aug(i,j:2*n)=aug(i,j:2*n)-aug(i,j)/aug(j,j)*aug(j,j:2*n);
        end
end
for j=n:-1:2
    aug (1:j-1,:)=aug(1: j-1,:)-aug(1:j-1,j)/aug(j,j)*aug(j,:);
end
for j=1:n
    aug(j,:)=aug(j,:)/aug(j,j);
end
b=aug(:,n+1:2*n);
disp(b,"the inverse of a found out to be is ");
