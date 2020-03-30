%i = input('Количсетво строк:');
%j = input('Количсетво столбцов:');

function[A] = task2(i,j)
A = ones(i,j);
for m = 1:i
    for k = 1:2:j
        A(m,k) = 0
    end
end

end