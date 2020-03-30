function[A] = task7(n)
    A = ones(n,1);
    if mod(n,2) == 0
        c1 = n/2;
        for j = 1:c1
            A(j+1,1) = A(j,1)+1;
        end
        A(c1+1,1) = A(c1,1);
        for i = (c1+1):(n-1)
            A(i+1,1) = A(i,1)-1;
        end
    else
        c = ceil(n/2);
        for d = 1:(c-1)
            A(d+1,1) = A(d,1)+1;
        end
        for dd = c:(n-1)
            A(dd+1,1) = A(dd,1)-1;
        end
        
    end
    s = sum(A);
    A = A./s;
end