function [A] = imtask2(D,n)
s = size(D);
st = s(1,1);
stb = s(1,2);

A = zeros(st+2*n,stb+2*n);

for i = 1:(st+2*n)
    if i <= n
        for m = 1:n
            A(i,m) = D(1,1);
            A(i,stb+2*n+1-m) = D(1,stb);
        end
        for j = 1:stb
            A(i,j+n) = D(1,j);
        end
    elseif i > st+n
        for j = 1:n
            A(i,j) = D(st,1);
            A(i,stb+2*n+1-j) = D(st,stb);
        end
        for j = 1:stb
            A(i,j+n) = D(st,j);
        end
    else
        for j = 1:n
            A(i,j) = D(i-n,1);
        end
        for j = (stb+2*n):-1:stb+n+1
            A(i,j) = D(i-n,stb);
        end
        for j = 1:stb
            A(i,j+n) = D(i-n,j);
        end
    end
end
end