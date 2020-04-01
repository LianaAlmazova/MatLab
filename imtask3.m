//Дана матрица с количеством строк km и столбцов kn. Написать функцию, которая на ее основе формирует матрицу c m строк,
//n столбцов, каждый элемент (r,c) которой получается как среднее значение элементов из блоков размером k х k (размытие 
//усреднением с заданным размером окна k)

function [A] = imtask3(D)
l = size(D);
mm = l(1,1);
nn = l(1,2);
k = gcd(mm,nn);
if mm == nn 
    if mod(mm,2) == 0
        k = mm/2;
    else 
        k = mm;
    end
    A = sum(sum(D))/(mm*nn);
end

m = mm/k;
n = nn/k;

T = zeros(k,k);
A = ones(m,n);

for i = 1:m
    for j = 1:n
        q = 1+k*(i-1);
        b = 1+k*(j-1);
        T = D(q:q+k-1,b:b+k-1); 
        s = sum(sum(T));  
        A(i,j) = ceil(s/(k*k));
    end
end
end
