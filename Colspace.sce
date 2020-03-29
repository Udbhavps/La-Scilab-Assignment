clc;clear;close;
function[a]=ColumnSpace(A,b)
    A_aug = [A b]
    a = A_aug
    a(2,:) = a(2,:)-(a(2,1)/a(1,1))*a(1,:);
    a(3,:) = a(3,:)-(a(3,1)/a(1,1))*a(1,:);
    disp(a,'A=');
    a(3,:) = a(3,:)-(a(3,2)/a(2,2))*a(2,:);
    disp(a,'A=');
    a(1,:)=a(1,:)/a(1,1);
    a(2,:)=a(2,:)/a(2,2);
    disp(a,'A=');
    for i = 1:3
        for j=i:4
            if(a(i,j)<>0)
               disp('spans column space of A',j,'the pivot column')
               break
               end
               
                end
           end
              
          
    
endfunction

function main()
    A=[0,0,0;0,0,0;0,0,0]
    A(1,1)=input("enter a11: ")
    A(1,2)=input("enter a12: ")
    A(1,3)=input("enter a13: ")
    A(2,1)=input("enter a21: ")
    A(2,2)=input("enter a22: ")
    A(2,3)=input("enter a23: ")
    A(3,1)=input("enter a31: ")
    A(3,2)=input("enter a32: ")
    A(3,3)=input("enter a33: ")
    disp('Column Space\n')
     b=[0;0;0]
        b(1,1)=input("enter b1: ")
        b(2,1)=input("enter b2: ")
        b(3,1)=input("enter b3: ")
        [a] = ColumnSpace(A,b)
endfunction
main();
