function gcd(a,b)   #Эта функция использует алгоритм нахождения наибольшего общего делителя двух чисел с использованием алгоритма Евклида.
    while b != 0
        a, b = b, a % b 
    end
    return abs(a)
end
