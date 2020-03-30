function [A] = imtask1(D)
s = size(D);
st = s(1,1);
stb = s(1,2);

m = st/3;

T = zeros(3,1);
A = ones(m,stb);

for i = 1:m
    for j = 1:stb
        q = 1 + 3*(i-1);
        T = D(q:q+2,j);
        Max = max(T);
        A(i,j) = Max;
    end
end
end

