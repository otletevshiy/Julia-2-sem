function invmod1(a::T, M::T) where T   #Эта функция вычисляет обратный элемент a^(-1) mod M в кольце по модулю M, используя расширенный алгоритм Евклида.
    d, x, y = extended_euclidean_algorithm(a, M)
    if d == 1
        return mod(x, M)
    else
        return nothing
    end
end
