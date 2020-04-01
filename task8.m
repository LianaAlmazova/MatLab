//Написать функцию, которая по заданному аргументу - матрице формирует новую, представляющую собой исходную, 
//окруженную n "слоями" нулей

function [A] = task8(D,n)
s = size(D);
st = s(1,1);
stb = s(1,2);
l = size(D)+2*n;
A = zeros(l);

for i = n+1:n+st
    for j = n+1:n+stb
        A(i,j) = D(i-n,j-n);
    end
end
end
