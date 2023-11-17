function Diophantine_solve(a, b, c)   #Эта функция решает линейное диофантово уравнение вида ax + bx = c для данных коэффицентов.
    d = gcd(a, b)
    if c % d != 0
        return nothing
    end
    
    a_d, x0, y0 = extended_euclidean_algorithm(a, b)
    x = x0 * (c ÷ d)
    y = y0 * (c ÷ d)
    
    return x, y
end
