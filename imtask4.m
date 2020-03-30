function [A] = imtask4(D,k)
s = size(D);
m = s(1,1);
n = s(1,2);

A = ones(m-k+1,n-k+1);
T = zeros(m-k+1,n-k+1);
for i = 1:(m-k+1)
    for j = 1:(n-k+1)
        T = D(i:i+k-1,j:j+k-1);
        A(i,j) = max(max(T));
    end
end
end
