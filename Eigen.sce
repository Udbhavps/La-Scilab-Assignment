clc;close;clear;
function [A]=Eigen(A)
    lam = poly(0,'lam')
    lam = lam
    charMat = A-lam*eye(3,3)
    disp(charMat,'The characteristic matrix is')
    charPoly = poly(A,'lam')
    disp(charPoly,'the characteristic polynomial is')
    lam = spec(A)
    disp(lam,'the eigen values of A are')
    function[x,lam]=eigenvectors(A)
        [n,m]=size(A);
        lam=spec(A)';
        x=[];
        for k = 1:3
            B=A-lam(k)*eye(3,3);
            C=B(1:n-1,1:n-1);
            b=B(1:n-1,n)
            y=C\b;
            y=[y;1];
            y=y/norm(y);
            x=[x y];
        end
     endfunction
     get('eigenvectors')
     [x,lam]=eigenvectors(A)
     disp(x,'The eigen vectors of A are');
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
    [A]=Eigen(A);
    
endfunction
main();
