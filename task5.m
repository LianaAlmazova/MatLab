//Написать функцию, которая по заданному значению n генерирует квадратную матрицу размера n, целочисленную, 
//случайную, чьи элементы находятся в заданных пределах

function[A] = task5(n,a,b)
    A = randi([a,b],n,n)
end
