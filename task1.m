

function[A] = task1(i,j)
A = ones(i,j);
     for m = 1:2:i
         for k = 1:2:j
             A(m,k) = 0;
         end
     end
     for m = 2:2:(i-1)
         for k = 2:2:(j-1)
             A(m,k) = 0;
         end
     end
     
end