disp('performing gaussian elimination')
a = [1 5;-2 -7]
disp('the co-efficient matrix is:')
disp(a)
b=[7;-5]
c=[a b]
disp('the augmented matrix is:')
disp(c)
disp('R2=R2+2*R1')
c(2,:)=c(2,:)+2*c(1,:)
disp(c)
disp('R2=(1/3)*2(c,:)')
c(2,:) = c(1,:)(1/3)
disp(c)
disp('R1=R1-5*R2')
c(1,:)=c(1,:)-5*c(2,:)
disp(c)
x1 = c(1,3)/c(1,1)
x2 = c(2,3)/c(2,2)
