

function[A] = task6(i,j)
A = randi(i,j);
for k = 2:i
    A(k,1) = A(k-1,1) + 1;

end
for l = 1:i
    for n = 2:j
        A(l,n) = A(l,1);
    end
end
end