


function [A] = task8(n)
l = length(n)+2;
A = zeros(l);
for i = 2:(l-1)
    for j = 2:(l-1)
        A(i,j) = n(i-1,j-1);
    end
end
end