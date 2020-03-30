function [P] = task4(n)
P = zeros(n);
a = 1;
for A = 1:(2*n-1)
    if mod(A,2)>0
        for stb = 1:n
            for st = 1:n
                if (st+stb-1) == A
                    P(st,stb) = a;
                    a = a+1;
                end
            end
        end
    else
        for st = 1:n
            for stb = 1:n
                if (st+stb-1) == A
                    P(st,stb) = a;
                    a = a+1;
                end
            end
        end
    end
end
end