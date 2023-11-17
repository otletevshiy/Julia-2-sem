function extended_euclidean_algorithm(a, b)   #Эта функция использует расширенный алгоритм Евклида для нахождения наибольшего общего делителя коэффицентов Безу для двух чисел.
    if b == 0
        return a, 1, 0
    else
        d, x, y = extended_euclidean_algorithm(b, a % b)
        return d, y, x - (a ÷ b) * y
    end
end
