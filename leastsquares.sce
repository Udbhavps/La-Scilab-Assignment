clc;clear;close;
function [A,b]=leastsquares(A,b)
    disp(A,'A=');
    disp(b,'b=');
    x=(A'*A)\(A'*b);
    disp(x,'x=');
    C=x(1,1);
    D=x(2,1);
    disp(C,'C=');
    disp(D,'D=');
    disp('the line of best fit is b=C+Dt');
    
endfunction

function main()
    A=[0,0;0,0;0,0]
    A(1,1)=input("enter a11: ")
    A(1,2)=input("enter a12: ")
    A(2,1)=input("enter a21: ")
    A(2,2)=input("enter a22: ")
    
    A(3,1)=input("enter a31: ")
    A(3,2)=input("enter a32: ")
   
    disp('Least Squares fit line\n')
     b=[0;0;0]
        b(1,1)=input("enter b1: ")
        b(2,1)=input("enter b2: ")
        b(3,1)=input("enter b3: ")
        [A,b]=leastsquares(A,b)
endfunction
main();
