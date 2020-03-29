clc;clear;close;
function [A]=SubSpaces(A,b)
    A = [A b]
    disp(A,'A=');
    [m,n] = size(A);
    
    [v,pivot]=rref(A);
    disp(v);
    r = length(pivot);
    disp(r,'rank=')
    cs = A(:,pivot);
    disp(cs,'Column Space=');
    ns = kernel(A);
    disp(ns,'Null Space=');
    rs=v(1:r,:)';
    disp(rs,'Row Space=')
    lns=kernel(A');
    disp(lns,'Left Null Space=');
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
    disp('Four fundamental Subspaces\n')
     b=[0;0;0]
        b(1,1)=input("enter b1: ")
        b(2,1)=input("enter b2: ")
        b(3,1)=input("enter b3: ")
        [A] = SubSpaces(A,b)
endfunction
main();
